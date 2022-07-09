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
	maxr = (n + 2) / 3; //maxr = maxr * maxr;
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
	maxr = (n + 2) / 3; //maxr = maxr * maxr;
	QCircuit qc(n * m);
	int totaltime = 0;
	while (true) {
		int q[3];
		const char* gate = parser.getInstruction(q[0], q[1], q[2]);
		if (gate == NULL)
			break;
		//cout<<gate<<" " << q1 << " " << q2 << " " << q3 << endl;
		QGate g;
		for (int i = 0;i < 3;i++)
			if (q[i] != -1)
				g.q.push_back(q[i]);
		if (gate[0] == 's' && gate[1] == 'w') {
			g.tau = 6;
			qc.sequence.push_back(g);
			totaltime += 6;
			continue;
		}
		if (q[2] != -1) {
			g.tau = 3;
			qc.sequence.push_back(g);
			totaltime += 3;
			continue;
		}
		if (q[1] != -1) {
			g.tau = 2;
			qc.sequence.push_back(g);
			totaltime += 2;
			continue;
		}
		g.tau = 1;
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
    int sn = 0;
	out << "OPENQASM 2.0;\n"\
		<< "include \"qelib1.inc\";\n"\
		<< "qreg q[" << n * m << "];\n"\
		<< "creg c[" << n * m << "];\n";
	for (auto& it : sequence) {
		QGate& g = it.first;
		if (g.q.size() > 1) {
			if (g.tau == 6){
                out << "swap ";
                sn++;
            }
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
    cout<<sn<<"\n";
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

int main(int argc, char** argv) {
	int grow = atoi(argv[2]);
	MCTS::C = 1;
	MCTS::iteratorNumber = atoi(argv[3]);
	srand(111);
	block::gamma = 0.54;
	MCTS::grow = grow;
	for(int i=0;i<SIM_NUM_PER_ITER;i++){
		MCTS::lis.push(i);
	}
	
	string lcp = "/home/lys/";
	lcp += string(argv[1]);
	string sp = "/home/lys/phyCir/search";
	string gp = "/home/lys/phyCir/greedy";
	string im = "/home/lys/phyCir/im";
	string resp = "/home/lys/phyCir/";
	resp += string(argv[4]);
	ofstream res(resp,ios::ate);
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
		m = n =4;
		maxr = 2;
		block::setDist(n, m);
		State::setAdj(n, m, maxr * maxr);
		map<int, int> pi = IM(im + "/" + fName);
		int qnum = qc.QbtNum();
		int gnum = qc.sequence.size();
		int tt = timeGreedySchedule(qc, gp + "/" + fName, pi);
		cout << "time greedy result: " << tt << "\n";
		int st = 0;
		struct timeval t1,t2;
		double timeuse;
		gettimeofday(&t1,NULL);
		st = search(&qc, sp + "/" + fName, pi);
		gettimeofday(&t2,NULL);
		timeuse = (t2.tv_sec - t1.tv_sec) + (double)(t2.tv_usec - t1.tv_usec)/1000000.0;

		cout << "search result: " << st << "\n";
		cout << "search time: " << timeuse << "\n";
		res<<ptr->d_name<<" "
		<<n<<" "
		<<m<<" "
		<<qnum<<" "
		<<gnum<<" "
		<<tt<<" "
		<<st<<" "
		<<timeuse<<"\n";

        res.close();
	}
	return 0;
}