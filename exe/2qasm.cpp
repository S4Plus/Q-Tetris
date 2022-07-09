#include<fstream>
#include<iostream>
#include<Windows.h>
#include"include/base.h"
using namespace std;
int n;
void saveAsQASM(string path, vector<QGate>& sequence) {
	ofstream out(path);
	out << "OPENQASM 2.0;\n"\
		<< "include \"qelib1.inc\";\n"\
		<< "qreg q[" << n << "];\n"\
		<< "creg c[" << n << "];\n";
	for (auto& g : sequence) {
		switch (g.q.size())
		{
		case 3:
			out << "ccx "; break;
		case 2:
			out << "cx "; break;
		case 1:
			out << "x "; break;
		default:
			break;
		}
		out << "q[" << g.q[0] << "]";
		for (int i = 1;i < g.q.size();i++) {
			out << ",q[" << g.q[i] << "]";
		}
		out << ";\n";
	}
	out.close();
}
int main() {
	string lcp = "D:\\code\\benchmarks\\RevLib\\small\\";

	string temp = (lcp + "*.txt");
	LPCTSTR files = temp.c_str();
	WIN32_FIND_DATA fileinfo;
	HANDLE handle = FindFirstFile(files, &fileinfo);

	do {
		string file = lcp + string(fileinfo.cFileName);
		cout << (fileinfo.cFileName) << "\n";
		vector<QGate> qc;
		ifstream is(file);
		
		char line[512];
		is.getline(line, sizeof(line));
		is >> line >> n;
		is.get();
		is.getline(line, sizeof(line));
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
			qc.push_back(g);
		}
		file.erase(file.find(".txt"), 4);
		saveAsQASM(file + ".qasm", qc);
	} while (FindNextFile(handle, &fileinfo));
	return 0;
}