#include"include/base.h"
#include<iostream>
map<int, int> block::q2p;
QCircuit::QCircuit(int N)
{
	lines = vector<vector<QGate>>(N);
}

QCircuit::~QCircuit()
{
}

block::block(const QGate& g) {
	tau = g.tau;
	double d = 0.001;
	for (int i = 0;i < g.q.size();i++) {
		for (int j = i + 1;j < g.q.size();j++) {
			int a = q2p[g.q[i]], b = q2p[g.q[j]];
			d = max(d, distance[a][b]);
		}
	}
	d *= gamma;
	for (int i = 0;i < distance.size();i++) {
		bool flag = false;
		for (int j : g.q) {
			int _j = q2p[j];
			if (distance[i][_j] < d)
				flag = true;
		}
		if (flag)
			cr.push_back(i);
	}
}

void block::setDist(int n, int m){
	block::distance.clear();
	block::q2p.clear();
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
	for (int q = 0;q < n * m;q++) {
		int a = q / m, b = q % m;
		block::q2p[q] = a * 4 * (m * 4 - 3) + b * 4;
	}
}

void QCircuit::init() {
	int N = lines.size();
	//ÿ������Ψһindex���
	int ni = sequence.size();
	for (int i = 0;i < sequence.size();i++) {
		sequence[i].index = i;
	}
	//����ÿ���ŵ��յ�ľ���
	vector<double> pd(lines.size(), 0);
	for (int i = sequence.size() - 1;i >= 0;i--) {
		QGate g = sequence[i]; double mw = -1;
		double wei = g.tau;// * g.tau;
		for (int& q : g.q) {
			mw = max(pd[q], mw);
		}
		for (int& q : g.q) {
			pd[q] = mw + wei;
		}
		sequence[i].wei = mw + wei;
	}
	//����lines
	for (int i = 0;i < sequence.size();i++) {
		QGate g = sequence[i];
		for (int& q : g.q) {
			if (q != -1)
				lines[q].push_back(g);
		}
	}
}

void QCircuit::clear() {
	sequence.clear();
	for (int i = 0;i < lines.size();i++) {
		lines[i].clear();
	}
}

int QCircuit::QbtNum() {
	int ret = 0;
	for (int i = 0;i < lines.size();i++)
		if (lines[i].size() > 0)
			ret++;
	return ret;
}

int QCircuit::GateNum() {
	return sequence.size();
}

void QCircuit::pc2lc(map<int, int> p2l) {
	vector<QGate> ns;
	for (QGate& g : sequence) {
		if (g.tau == 6) {
			int Q0 = g.q[0], Q1 = g.q[1];
			int q0 = p2l[Q0], q1 = p2l[Q1];
			p2l[Q0] = q1, p2l[Q1] = q0;
		}
		else {
			QGate lg = g;
			for (int& q : lg.q) {
				q = p2l[q];
				//cout << q << " ";
			}//cout << "\n";
			ns.push_back(lg);
		}
	}
	sequence = ns;
	init();
}

bool QCircuit::operator==(const QCircuit& qc) const {
	if (lines.size() != qc.lines.size()) {
		cout << "lines size not equal\n";
		return false;
	}
	for (int i = 0;i < lines.size();i++) {
		if (lines[i].size() != qc.lines[i].size()) {
			cout << "lines[" << i << "] size not equal\n";
			return false;
		}
		for (int j = 0;j < lines[i].size();j++) {
			if (lines[i][j] == qc.lines[i][j])
				continue;
			cout << "(" << i << ", " << j << ") not equal\n";
			cout << "left: ";
			for (int k : lines[i][j].q) {
				cout << k << " ";
			}cout << "\n";
			cout << "right: ";
			for (int k : qc.lines[i][j].q) {
				cout << k << " ";
			}cout << "\n";
		}
	}
	return true;
}
void QCircuit::show() {
	for (QGate g : sequence) {
		cout << g.index << " ";
		for (int q : g.q) {
			cout << q << " ";
		}cout << "\n";

	}
}