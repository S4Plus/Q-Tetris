#ifndef BASE
#define BASE
#include<vector>
#include<set>
#include<climits>
#include<map>
#include<algorithm>
#include<cmath>
#define M_QUBITS_NUM 200
using namespace std;
struct QGate
{
	int index;
	vector<int> q;
	int tau;
	double wei;
	//set<int> preds, succs;
	QGate(int q0, int q1, int q2, int tau) :tau(tau) {
		index = -1; wei = 0;
		q.push_back(q0); q.push_back(q1); q.push_back(q2);
	}
	QGate(int q0, int q1, int tau) :tau(tau) {
		index = -1; wei = 0;
		q.push_back(q0); q.push_back(q1);
	}
	QGate(int q0, int tau) :tau(tau) {
		index = -1; wei = 0;
		q.push_back(q0);
	}
	QGate() { index = -1;tau = 0; wei = 0; }
	bool operator<(const QGate& g) const {
		//return index < g.index;
		if(q.size() != g.q.size())
			return q.size() < g.q.size();
		if(tau != g.tau)
			return tau < g.tau;
		for(int i=0;i < q.size();i++){
			if(q[i] != g.q[i])
				return q[i] < g.q[i];
		}
	}
	bool operator==(const QGate& g) const {
		vector<int> q1 = q, q2 = g.q;
		sort(q1.begin(), q1.end());
		sort(q2.begin(), q2.end());
		int a = 0, b = 0;
		for (int i : q1) {
			a = a * M_QUBITS_NUM + i;
		}
		for (int i : q2) {
			b = b * M_QUBITS_NUM + i;
		}
		return a == b;
	}
};
class block
{
public:
	static vector<vector<double>> distance;
	static map<int, int> q2p;
	static double gamma;
	static void setDist(int n, int m);
	int tau;
	vector<int> cr;
	block(const QGate& g);
	block() { tau = -1; }
	int size() { return cr.size() * tau; }
};

class QCircuit
{
public:
	QCircuit(int N);
	QCircuit(){}
	~QCircuit();
	bool operator==(const QCircuit& qc) const;
	void init();
	void pc2lc(map<int, int> pi);
	void clear();
	void show();
	int QbtNum();
	int GateNum();
	//QGate getFrontGate(int q);
public:
	vector<QGate> sequence;
	vector<vector<QGate>> lines;
};


#endif // !BASE
