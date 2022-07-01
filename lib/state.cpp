#include<include/state.h>
#include<algorithm>
#include<iostream>
#include<time.h>
#include<mutex>
//#define PROCESS
#define FILTER_RATIO 0.8
vector<double> State::runTime = vector<double>(10, 0);
int State::n, State::m;
double State::maxr;
vector<vector<int>> State::adj;
vector<vector<double>> State::dist;
vector<map<QGate,block>> State::blockLib;
extern mutex mut;
State::State(const State & s) {
	QC = s.QC;
	FrontGates = s.FrontGates;
	lineFronts = s.lineFronts;
	lineEnds = s.lineEnds;
	EndGates = s.EndGates;
	availableActions = s.availableActions;
	QS = s.QS;
	highest = s.highest;
	pi = s.pi;
	PI = s.PI;
	li = s.li;
}
State State::operator=(const State& s) {
	QC = s.QC;
	FrontGates = s.FrontGates;
	lineFronts = s.lineFronts;
	lineEnds = s.lineEnds;
	EndGates = s.EndGates;
	availableActions = s.availableActions;
	QS = s.QS;
	highest = s.highest;
	pi = s.pi;
	PI = s.PI;
	li = s.li;
	return *this;
}

void State::actions(int filter) {
	//��ʼʱ���������
	availableActions.clear();
	int mt = INT_MAX;
	for (auto& g : FrontGates) {
		QGate pg = immediate(g);
		if (!pg.q.empty()) {
			int t = availableActions[g] = exeTime(pg);
			//availableActions[g].r = reward(g);
			mt = min(mt, t);
		}
	}
	if (mt < highest)
		return;
	candSwaps(filter);
	//auto candS = candSwaps(filter);
	// vector<pair<QGate,double>> ss;
	// for (auto& g : candS) {
	// 	availableActions[g] = exeTime(g);
	// 	if(filter > 0){
	// 		ss.push_back(pair<QGate, double>(g,reward(g)));
	// 	}
	// }
	// if(filter > 0){
	// 	sort(ss.begin(),ss.end(),\
	// 	[](pair<QGate, double> a,pair<QGate, double> b){return a.second > b.second;});
	// 	for(int i=M_SWAP_NUM;i<ss.size();i++){
	// 		availableActions.erase(ss[i].first);
	// 	}
	// }
}
//g���߼�
void State::delGate( QGate g) {
	for (int& q : g.q) {
		if (q != -1)
			lineFronts[q]++;
	}
	FrontGates.erase(g);
	for (int& q : g.q) {
		if (lineFronts[q] == QC->lines[q].size())
			continue;
		QGate cg = QC->lines[q][lineFronts[q]];
		bool flag = true;
		for (int& _q : cg.q) {
			if (QC->lines[_q][lineFronts[_q]].index != cg.index) {
				flag = false;
				break;
			}
		}
		if (flag) {
			FrontGates.insert(cg);
		}
	}
}

int State::exeTime(QGate g) {

	if (blockLib[li].find(g) == blockLib[li].end()) {
		blockLib[li][g] = block(g);
	}
	block b = blockLib[li][g];
	//block b(g);
	int t = 0;
	for (auto i : b.cr) {
		t = max(t, QS[i]);
	}
	return t;
}
//g���߼�or���� pg������
int State::launch(QGate g) {
	QGate pg = g;
	if (g.tau != 6 || g.q.size() > 2) {
		for (int i = 0;i < g.q.size();i++)
			pg.q[i] = pi[g.q[i]];
	}
	if (blockLib[li].find(pg) == blockLib[li].end()) {
		blockLib[li][pg] = block(pg);
	}
	block b = blockLib[li][pg];
	//block b(pg);
	b.tau = g.tau;
	int t = availableActions[g];
	int ret = t + 1;
	t += g.tau;
	highest = max(highest, t);
	for (auto i : b.cr) {
		QS[i] = t;
	}
	if (g.tau == 6 && g.q.size() == 2) {
		int q0 = g.q[0], q1 = g.q[1];
		int Q0 = PI[q0], Q1 = PI[q1];
		if (Q0 != -1)
			pi[Q0] = q1;
		if (Q1 != -1)
			pi[Q1] = q0;
		PI[q0] = Q1; PI[q1] = Q0;
		setEnd();
	}
	else {
		delGate(g);
	}
	return ret;
}
double State::reward(QGate g){
	int t = availableActions[g], h = 1;
	h += max(t + g.tau - highest, 0);
	return g.wei / h;
}
double State::simulate(int H) {
	double ret = 0;
	while (highest < H + 10)
	{
		actions(1);
		if (availableActions.empty())
			break;
		QGate g;
		int mt = INT_MAX, mtau = INT_MAX;
		double mw = -1;
		for (auto it = availableActions.begin();it != availableActions.end();it++) {
			if (it->second < mt || (it->second == mt && it->first.tau < mtau)\
				|| (it->second == mt && it->first.tau == mtau && it->first.wei > mw)) {
				g = it->first;
				mt = it->second, mtau = it->first.tau;
				mw = it->first.wei;
			}
		}
		int ra = launch(g);
		if(g.tau!=6 || g.q.size() > 2)
		ret += g.wei * g.q.size() * min(g.tau, max(0, H - mt)) / g.tau;
	}
	ret += max(0, H - highest) * QS.size();
	return ret;
}

vector<pair<QGate, int>> State::greedySchedule() {
	mut.lock();
	vector<pair<QGate, int>> ret; li = 0;
	for (auto g : QC->sequence) {
		int bi = 0;
		for (int& q : g.q) {
			bi = bi * M_QUBITS_NUM + q + 1;
		}
		if (blockLib[li].find(g) == blockLib[li].end()) {
			blockLib[li][g] = block(g);
		}
		block b = blockLib[li][g];
		int t = 0;
		for (auto i : b.cr) {
			t = max(t, QS[i]);
		}
		int ra = t + 1;
		t += g.tau;
		highest = max(highest, t);
		for (auto i : b.cr) {
			QS[i] = t;
		}
		ret.push_back(pair<QGate, int>(g, ra));
	}
	mut.unlock();
	return ret;
}

vector<pair<QGate, int>> State::timeGreedySchedule() {
	mut.lock();
	vector<pair<QGate, int>> ret; li = 0; int step = 0;
	while (!FrontGates.empty())
	{
		actions(1);
		QGate g;
		int mt = INT_MAX, mtau = INT_MAX;
		double mw = -1;
		for (auto it = availableActions.begin();it != availableActions.end();it++) {
			if (it->second < mt || (it->second == mt && it->first.tau < mtau)\
				||(it->second == mt && it->first.tau== mtau && it->first.wei > mw)) {
				g = it->first;
				mt = it->second, mtau = it->first.tau;
				mw = it->first.wei;
			}
		}
		// for (int q : g.q) {
		// 	cout << q << " ";
		// }cout << "\n";
		int ra = launch(g);
		if (g.tau == 6 && g.q.size() == 2) {
			int w = swapWei(g);
		}
		if (g.tau != 6 || g.q.size() > 2) {
			for (int& q : g.q) {
				q = pi[q];
			}
		}
		ret.push_back(pair<QGate, int>(g, ra));
	}
	mut.unlock();
	return ret;
}

int State::getResult() {
	return highest;
}

State::State(QCircuit *QC, int n, int m, map<int,int> _pi)
{
	li = 0;
	this->QC = QC;
	int N = QC->lines.size();
	lineEnds = lineFronts = vector<int>(N, 0);
	pi = PI = vector<int>(N, -1);
	for (auto it : _pi) {
		pi[it.first] = it.second;
		PI[it.second] = it.first;
	}
	QS = vector<int>((4 * n - 3) * (4 * m - 3), 0);
	highest = 0;
	for (int q = 0;q < N;q++) {
		if (lineFronts[q] == QC->lines[q].size())
			continue;
		QGate g = QC->lines[q][lineFronts[q]];
		bool flag = true;
		for (int& _q : g.q) {
			if (QC->lines[_q][lineFronts[_q]].index != g.index) {
				flag = false;
				break;
			}
		}
		if (flag) {
			FrontGates.insert(g);
		}
	}
	lineEnds = lineFronts;
	EndGates = FrontGates;
	setEnd();
}
#define POW(X) X*X
void State::setAdj(int _n, int _m, int _r) {
	State::dist.clear();
	State::adj.clear();
	n = _n, m = _m, maxr = sqrt(_r);
	int N = n * m;
	adj = vector<vector<int>>(N, vector<int>());
	dist = vector<vector<double>>(N, vector<double>(N, 100000));
	for (int i = 0;i < N;i++) {
		dist[i][i] = 0;
	}
	for (int i = 0;i < N;i++) {
		for (int j = i + 1;j < N;j++) {
			int a = i / m, b = i % m;
			int c = j / m, d = j % m;
			dist[i][j] = dist[j][i] = sqrt(pow(a - c, 2) + pow(b - d, 2));
			if (POW((a - c)) + POW((b - d)) <= _r) {
				adj[i].push_back(j); adj[j].push_back(i);
			}
		}
	}
}
//�����������ؼ���
vector<int> State::candQubits(int filter) {
	vector<int> ret;
	for (auto g : EndGates) {
		if (!immediate(g).q.size()) {
			for (int& q : g.q) {
				ret.push_back(pi[q]);
			}
		}
	}
	return ret;
}

double State::reward(QGate& swap, QGate& g) {
	int Q0 = swap.q[0], Q1 = swap.q[1];
	double rew = 0;
	for (int i = 0;i < g.q.size();i++) {
		int a = g.q[i], _a; _a = a;
		if (a == Q0)
			_a = Q1;
		if (a == Q1)
			_a = Q0;
		for (int j = i + 1;j < g.q.size();j++) {
			int b = g.q[j], _b; _b = b;
			if (b == Q0)
				_b = Q1;
			if (b == Q1)
				_b = Q0;
			rew += dist[a][b] - dist[_a][_b];
		}
	}
	return rew;
}

double State::swapWei(QGate& swap) {
	double ret = 0;
	for (int i = 0;i < 2;i++) {
		int Q = swap.q[i];
		int q = PI[Q];
		if (q == -1)
			continue;
		for (int j = lineFronts[q];j < lineEnds[q];j++) {
			QGate g = QC->lines[q][j];
			for (int& q : g.q) {
				q = pi[q];
			}
			double rew = reward(swap, g);
			if (rew < 0)
				return -1;
		}
	}
	for (int q : swap.q) {
		QGate g;
		int _q = PI[q];
		if (_q == -1 || lineEnds[_q] == QC->lines[_q].size())
			continue;
		g = QC->lines[_q][lineEnds[_q]];
		if (EndGates.find(g) != EndGates.end()) {
			for (int& q : g.q) {
				q = pi[q];
			}
			double rew = reward(swap, g);
			ret += rew * g.wei;
		}
	}
	swap.wei = ret;
	return ret / maxr;
}

set<QGate> State::candSwaps(int filter) {
	set<QGate> ret;
	int index = 100000;
	auto cq = candQubits(filter);
	double mw = -1;
	for (int it = 0;it < cq.size();it++) {
		int i = cq[it];
		vector<pair<QGate,double>> ss; double totolRew = 0;
		for (int k = 0;k < adj[i].size();k++) {
			int j = adj[i][k];
			int a = max(i, j), b = min(i, j);
			QGate g(a, b, 6); g.index = index + a * M_QUBITS_NUM + b;
			if (ret.find(g)==ret.end() && swapWei(g) > 0) {
				availableActions[g] = exeTime(g);
				if(filter > 0){
					double r = reward(g);
					ss.push_back(pair<QGate,double>(g,r));
					totolRew += r;
				}
				ret.insert(g);
			}
		}
		if(ss.size() && filter > 0){
			sort(ss.begin(),ss.end(),\
			[](pair<QGate,double> a,pair<QGate,double> b){return a.second > b.second;});
			double tempRew = 0; int itemp = 0;
			for(itemp=0;tempRew<totolRew*FILTER_RATIO;itemp++){
				tempRew += ss[itemp].second;
			}
			while(itemp<ss.size()){
				availableActions.erase(ss[itemp++].first);
			}
		}
	}
	return ret;
}

QGate State::immediate(const QGate& g) {
	QGate pg;
	for (int i = 0;i < g.q.size();i++) {
		for (int j = i + 1;j < g.q.size();j++) {
			int q1 = pi[g.q[i]], q0 = pi[g.q[j]];
			if (dist[q1][q0] > maxr + 0.0001)
				return pg;
		}
	}
	for (auto& q : g.q) {
		pg.q.push_back(pi[q]);
	}
	return pg;
}

void State::setEnd() {
	auto fg = FrontGates;
	auto lf = lineFronts;
	bool stop = false;
	while (!stop) {
		stop = true;
		auto tempF = FrontGates;
		for (auto& g : tempF) {
			if (immediate(g).q.size()) {
				delGate(g);
				stop = false;
			}
		}
	}
	EndGates.clear();
	EndGates = FrontGates;
	lineEnds = lineFronts;
	lineFronts = lf;
	FrontGates = fg;

}

void State::show(){
	cout<<"line front: \n";
	for(int i : lineFronts){
		cout<<i<<" ";
	}cout<<"\n";
	cout<<"line end: \n";
	for(int i : lineEnds){
		cout<<i<<" ";
	}cout<<"\n";
	cout<<"front gates: \n";
	for(auto g : FrontGates){
		for(int q : g.q){
			cout<<pi[q]<<" ";
		}cout<<"\n";
	}
	cout<<"end gates: \n";
	for(auto g : EndGates){
		for(int q : g.q){
			cout<<pi[q]<<" ";
		}cout<<"\n";
	}
}

State::~State()
{
}