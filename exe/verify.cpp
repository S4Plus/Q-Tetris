/*
this algorithm checks whether the physical circuit is equivalent with the logical circuit
and whether the scheduling sequence satisfies with PEC
*/
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
	// cout << "gate num: " << qc.sequence.size() << endl;
	// cout << "total time: " << totaltime << endl;
	return qc;
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
	n = atoi(argv[4]), m = atoi(argv[5]);
	string p1 = string(argv[1]); //physical circuit
	string p2 = string(argv[2]); //logical circuit
	//string gp = "~/phyCir/greedy";
	string pim = string(argv[3]); //initial mapping
	

	QCircuit pc = qasmToBenchmark(p1),\
		lc = qasmToBenchmark(p2);
	map<int, int> l2p = IM(pim);
	map<int, int> p2l;
	for (auto it : l2p) {
		p2l[it.second] = it.first;
	}
	pc.pc2lc(p2l);
	// cout<<lc.lines[0].size()<<"\n";
	// lc.init();
	// cout<<lc.lines[0].size()<<"\n";
	if (pc == lc) {
		cout << "equal\n";
	}
	else {
		cout << "not equal\n";
	}

	return 0;
}