#include<include/MCTS.h>
#include<iostream>
#include<iomanip>
#include<stdio.h>
#include<dirent.h>
#include<fstream>
#include"include/QASMParser.h"
#include<sys/time.h>
#include<cmath>
#include<string.h>
vector<vector<double>> block::distance;
double block::gamma = 0;
int n, m, maxr;
QCircuit revToCircuit(string path){
	ifstream is(path);
	char line[512];
	int qcount;
	while (is.getline(line, sizeof(line))) {
		string st(line);
		if (st.find(".begin") != st.npos)
			break;
		if (st.find(".numvars") != st.npos) {
			for (char* p = line;;p++) {
				if (*p >= '0' && *p <= '9') {
					qcount = atoi(p);
					break;
				}
			}
		}
	}
	n = m = 0;
	while(n * m < qcount){
		n++; m++;
	}
	maxr = (n + 2) / 3; maxr = maxr * maxr;
	QCircuit qc(n * m);
	char op;
	int r;
	while (is >> op) {
		if (op != 't')
			break;
		QGate g;
		is >> r;
		char au;
		for (int i = 0;i < r;i++) {
			is >> au;
			int x; is >> x;
			g.q.push_back(x);
		}
		g.tau = g.q.size();
		qc.sequence.push_back(g);
	}
	qc.init();
	return qc;
}
QCircuit qasmToBenchmark(string path) {
	ifstream in(path.c_str());
	QASMParser parser(in);
	int qcount = parser.getQubitCount();
	n = m = 0;
	while(n * m < qcount){
		n++; m++;
	}
	maxr = (n + 3) / 3; maxr = maxr * maxr;
	QCircuit qc(n * m);
	int totaltime = 0;
	while (true) {
		vector<int> q;
		const char* gate = parser.getInstruction(q);
		if (gate == NULL)
			break;
		//cout<<gate<<" " << q1 << " " << q2 << " " << q3 << endl;
		QGate g;
		g.q = q;
		g.tau = q.size();
		if (gate[0] == 's' && gate[1] == 'w') {
			g.tau = 6;
			qc.sequence.push_back(g);
			totaltime += 6;
			continue;
		}
		
		qc.sequence.push_back(g);
		totaltime += 1;
	}
	qc.init();
	cout << "gate num: " << qc.sequence.size() << endl;
	cout << "total time: " << totaltime << endl;
	return qc;
}
void savePhyCir(string path, vector<pair<QGate, int>>& sequence) {
	ofstream out(path);
	out << "OPENQASM 2.0;\n"\
		<< "include \"qelib1.inc\";\n"\
		<< "qreg q[" << n * m << "];\n"\
		<< "creg c[" << n * m << "];\n";
	for (auto& it : sequence) {
		QGate& g = it.first;
		if (g.q.size() > 1) {
			if (g.tau == 6)
				out << "swap ";
			if (g.tau == 3)
				out << "ccx ";
			if (g.tau == 2)
				out << "cx ";
		}
		else {
			out << "u1 ";
		}
		out << "q[" << g.q[0] << "]";
		for (int i = 1;i < g.q.size();i++) {
			out << ",q[" << g.q[i] << "]";
		}
		out << ";\n";
		//out << " \t start time = " << it.second << "\n";
	}
	//out << endl;
	out.close();
	path += ".txt";
	ofstream ot(path);
	for (auto it : sequence) {
		ot << setiosflags(ios::right) << setw(4) << it.second << "\t";
		ot << it.first.tau << " ";
		for (int q : it.first.q) {
			ot << setiosflags(ios::right) << setw(3) << q << " ";
		}ot << "\n";
	}
	ot.close();
}
int search(QCircuit* QC, string save_path, map<int,int> pi) {
	MCTS Searcher;
	Searcher.init(QC,n,m,pi);
	Searcher.start();
	savePhyCir(save_path, Searcher.schedulingSequence);
	return Searcher.result;
}
int timeGreedySchedule(QCircuit QC, string save_path, map<int,int> pi) {
	State s(&QC, n, m, pi);
	cout << "front gates number: " << s.FrontGates.size() << "\n";
	auto sequence = s.timeGreedySchedule();
	savePhyCir(save_path, sequence);
	return s.getResult();
}
map<int, int> IM(string path) {
	ifstream is(path);
	int a, b;
	int x, y;
	char c;
	map<int, int> pi;
	while (is >> c) {
		string fName;
		is >> fName;
		is >> fName;
		is >> a;
		for (int i = 0;i < 2;i++)
			is >> c;
		is >> x;
			is >> c;
		is >> y;
			is >> c;
		b = x + y * m;
		pi[a] = b;
	}
	return pi;
}
map<int, int> randMap(int a, int b){
	cout<<"qubit count: "<<a<<"\n";
	map<int, int> IM;
	vector<int> vs;
	for(int i=0;i<b;i++){
		vs.push_back(i);
	}
	for(int i=0;i<a;i++){
		int l = b - i;
		int j = rand() % l;
		IM[i] = vs[j];
		//cout<<vs[j]<<" ";
		swap(vs[j], vs[l-1]);
	}
	//cout<<"\n";
	return IM;
}

int main(int argc, char** argv) {
	int grow = atoi(argv[4]); // l in Fig.8 in our paper
	MCTS::C = 1;
	MCTS::iteratorNumber = atoi(argv[5]); // k in Fig.7
	srand(111);
	block::gamma = 0.54;
	MCTS::grow = grow;
	for(int i=0;i<SIM_NUM_PER_ITER;i++){
		MCTS::lis.push(i);
	}
	
	// string lcp = "/home/lys/benchmark/";
	// lcp += string(argv[1]);
	// string sp = "/home/lys/phyCir/random";
	// string gp = "/home/lys/phyCir/random";
	// string im = "/home/lys/phyCir/im";
	// string resp = "/home/lys/phyCir/";
	string lcp =  string(argv[1]);
	string sp = string(argv[2]);
	string im = "../input/im"; //initial mapping path, ./input/im
	string resp =  string(argv[3]);
	ofstream res(resp);
	DIR* pDir = opendir(lcp.c_str());
	if(pDir == NULL){
		cout<<"path error\n";
		system("Pause");
	}
	struct dirent* ptr;
	while((ptr = readdir(pDir)) !=0 ){
		State::blockLib = vector<map<QGate, block>>(SIM_NUM_PER_ITER);
		if(strcmp(ptr->d_name, ".") == 0 || strcmp(ptr->d_name, "..") == 0)
			continue;
		string fName(ptr->d_name);
		cout<<ptr->d_name<<"\n";
		string file = lcp + "/" + ptr->d_name;
		QCircuit qc;
		if(fName.find(".qasm") != fName.npos)
			qc = qasmToBenchmark(file);
		else{
			qc = revToCircuit(file);
			fName.erase(fName.find(".txt"), 4);
			fName += ".qasm";
		}
		cout<< n <<" "<< m <<" "<< maxr <<"\n";
		block::setDist(n, m);
		State::setAdj(n, m, maxr);
		int qnum = qc.QbtNum();
		int gnum = qc.sequence.size();
		map<int, int> pi = IM(im + "/" + fName);
		//map<int, int> pi = randMap(qnum, n * m);
		
		struct timeval t1,t2;
		double timeuse1, timeuse2;
		gettimeofday(&t1,NULL);
		int tt = timeGreedySchedule(qc, sp + "/HGA_" + fName, pi);
		gettimeofday(&t2,NULL);
    	timeuse1 = (t2.tv_sec - t1.tv_sec) + (double)(t2.tv_usec - t1.tv_usec)/1000000.0;
		cout << "time greedy result: " << tt << "\n";
		int st = 0;
		gettimeofday(&t1,NULL);
		st = search(&qc, sp + "/MCTS_" + fName, pi);
		gettimeofday(&t2,NULL);
    	timeuse2 = (t2.tv_sec - t1.tv_sec) + (double)(t2.tv_usec - t1.tv_usec)/1000000.0;

		cout << "search result: " << st << "\n";
		cout << "search time: " << timeuse2 << "\n";
		res<<ptr->d_name<<" "
		    <<n * m<<" "
		    <<qnum<<" "
		    <<gnum<<" "
		    <<tt<<" "
		    <<st<<" "
		    <<timeuse1<<" "
		   <<timeuse1<<"\n";
		res.close();
	}
	return 0;
}