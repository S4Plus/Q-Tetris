#include<include/MCTS.h>
#include<iostream>
#include<Windows.h>
#include<fstream>
#include"include/QASMParser.h"
#include<time.h>
#include"libxl.h"
#define SUBCIRCUIT_GATES 100
vector<vector<double>> block::distance;
double block::gamma = 0;
int n, m, maxr;
bool outPutSearchProcess = false;
libxl::Book* book = xlCreateXMLBook();
libxl::Sheet* sheet = book->addSheet("sheet1");
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
			g.tau = 5;
			qc.sequence.push_back(g);
			totaltime += 5;
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
int timeGreedySchedule(QCircuit QC) {
	map<int, int> pi;
	for (int i = 0;i < QC.lines.size();i++) {
		pi[i] = i;
	}
	State s(&QC, n, m, pi);
	auto sequence = s.greedySchedule();
	return s.getResult();
}

int main() {
	n = 5, m = 5, maxr = 2;
	int testNumber = 10;
	int row = 2;
	int grow = 45;
	int gateCount = 300;
	bool fixBenchmark = false, certain = true;
	int N = n * m;
	MCTS::C = 1;
	MCTS::iteratorNumber = 400;
	srand(111);
	State::setAdj(n, m, maxr);
	for (int a = 0;a < 4 * n - 3;a++) {
		for (int b = 0;b < 4 * m - 3;b++) {
			vector<double> dis;
			for (int c = 0;c < 4 * n - 3;c++) {
				for (int d = 0;d < 4 * m - 3;d++) {
					dis.push_back(sqrt(pow(a - c, 2) + pow(b - d, 2)));
				}
			}
			block::distance.push_back(dis);
		}
	}
	for (int q = 0;q < N;q++) {
		int a = q / m, b = q % m;
		block::q2p[q] = a * 4 * (m * 4 - 3) + b * 4;
	}
	block::gamma = 0.53;
	MCTS::grow = grow;

	HANDLE handle;
	//string path = "C:\\file\\qauntum\\code\\quantum-master\\codar\\test_cases\\quantum_volume\\";
	string path = "D:\\code\\benchmarks\\debugP\\";
	string temp = (path + "*.qasm");
	LPCTSTR files = temp.c_str();
	WIN32_FIND_DATA fileinfo;
	handle = FindFirstFile(files, &fileinfo);
	cout << (fileinfo.cFileName) << "\n";
	string file = path + string(fileinfo.cFileName);
	QCircuit qc = qasmToBenchmark(file);
	clock_t s, e;
	s = clock();
	int tt = timeGreedySchedule(qc);
	e = clock();
	cout << "time greedy result: " << tt << "\n";
	sheet->writeStr(row, 2, fileinfo.cFileName);
	sheet->writeNum(row++, 3, tt);
	while (FindNextFile(handle, &fileinfo)) {
		cout << "\n" << fileinfo.cFileName << "\n";
		string file = path + string(fileinfo.cFileName);
		QCircuit qc = qasmToBenchmark(file);
		int tt = timeGreedySchedule(qc);
		cout << "time greedy result: " << tt << "\n";
		sheet->writeStr(row, 2, fileinfo.cFileName);
		sheet->writeNum(row++, 3, tt);
	}
	sheet->setCol(0, 0, 12);
	//book->save("D:\\code\\data\\real4t5\\la.xlsx");
	return 0;
}