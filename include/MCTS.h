#include<include/state.h>
#include<iostream>
#include<queue>
#define PRUNE_CRT_RATE 4
#define SIM_NUM_PER_ITER 64
#define NON_USED 100000
//#define DEBUG
struct Node
{
	int N, parent, lastN, ut, gr;
	double imR, mQ, totalQ;
	State s;
	set<int> childs;
	QGate a;
	Node(State& _s){
		s = _s;
		imR = mQ = totalQ = 0;
		ut = lastN = N = 0;
		parent = -1;
		gr = PRUNE_CRT_RATE;
	}
	Node(){}
	void reset() {
		imR = mQ = totalQ = 0;
		ut = lastN = N = 0;
		parent = -1;
		gr = PRUNE_CRT_RATE;
		childs.clear();
	}
};
class MCTS;
struct args {
	MCTS* m; int p;
};
class MCTS
{
public:
	MCTS();
	~MCTS();
	void init(QCircuit* mQC, int n, int m, map<int,int> _pi);
	void getATree();
	void start();
	static void distribute(MCTS* m, int leaf, int t);
	void expand(int leaf);
	//static void threadExpand(args* a);
	double simulate(int leaf);
	static void threadSimulate(MCTS* m, int p);
	double upgrade(int p);
	void prune(int p);
	void decision();
	void gc(int r);
	static void debug();
	void printTree(int r, int layer);

public:
	static vector<double> runTime;
	static double gamma;
	static int grow;
	static int iteratorNumber;
	static double C;
	static queue<int> lis;
	int root, result, updateTimes;
	vector<pair<QGate, int>> schedulingSequence;
	Node* Tree;
	queue<int> nonUsed;
};


