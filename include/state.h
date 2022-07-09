#include<vector>
#include<set>
#include<map>
#include<include/base.h>
using namespace std;

struct tr{
	int t,r;
	tr(){t=r=0;}
};

class State
{
public:
	State(){}
	State(QCircuit* QC, int n, int m, map<int,int> _pi);
	State(const State & s);
	~State();
	State operator=(const State& s);
	void actions(int filter);
	int launch(QGate g);
	int exeTime(QGate g);
	void delGate(QGate g);
	double reward(QGate g);
	vector<pair<QGate, int>> greedySchedule();
	vector<pair<QGate, int>> timeGreedySchedule();
	double simulate(int H);
	int getResult();
	vector<int> candQubits(int filter);
	set<QGate> candSwaps(int filter);
	double swapWei(QGate& swap);
	double reward(QGate& swap, QGate& g);
	void setEnd();
	static void setAdj(int _n, int _m, int _r);
	QGate immediate(const QGate& g);
	void show();
public:
	static vector<double> runTime;
	static int n, m;
	static double maxr;
	QCircuit* QC;
	vector<int> lineFronts;
	vector<int> lineEnds;
	static vector<vector<int>> adj;
	static vector<vector<double>> dist;
	static vector<map<QGate, block>> blockLib;
	set<QGate> FrontGates;
	set<QGate> EndGates;
	map<QGate, int> availableActions;
	int li;
	vector<int> pi, PI;
	int highest;
	vector<int> QS;
};
