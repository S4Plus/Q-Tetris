#include<include/state.h>
#include<iostream>
#include<stdio.h>
#include<dirent.h>
#include<fstream>
#include"include/QASMParser.h"
#include<time.h>
vector<vector<double>> block::distance;
double block::gamma = 0;
int n, m, maxr;
QCircuit qasmToBenchmark(string path) {
	ifstream in(path.c_str());
	QASMParser parser(in);
	parser.getQubitCount();
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
	cout << "gate num: " << qc.sequence.size() << endl;
	cout << "total time: " << totaltime << endl;
	return qc;
}
map<int, int> IM(string path) {
	ifstream is(path);
	int a, b;
	int x, y;
	char c;
	map<int, int> pi;
	while (is >> c) {
		string temp;
		is >> temp;
		is >> temp;
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
	n = atoi(argv[3]), m = atoi(argv[4]);
	string p1 = "/home/lys/phyCir/";
	p1 += string(argv[1]);
	string p2 = "/home/lys/RevLib/";
	p2 += string(argv[2]);
	//string gp = "~/phyCir/greedy";
	string pim = "/home/lys/phyCir/im";
	
	DIR* pDir = opendir(p2.c_str());
	struct dirent* ptr;
	while((ptr = readdir(pDir)) !=0 ){
		cout<<ptr->d_name<<"\n";
		QCircuit pc = qasmToBenchmark(p1 + "/" + ptr->d_name),\
			lc = qasmToBenchmark(p2 + "/" + ptr->d_name);
		map<int, int> l2p = IM(pim + "/" + ptr->d_name);
		map<int, int> p2l;
		for (auto it : l2p) {
			p2l[it.second] = it.first;
		}
		pc.pc2lc(p2l);
		lc.init();
		if (pc == lc) {
			cout << "equal\n";
		}
		else {
			cout << "not equal\n";
		}
	}
	return 0;
}