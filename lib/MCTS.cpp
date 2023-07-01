#include<include/MCTS.h>
#include<math.h>
#include<time.h>
#include<iomanip>
#include<thread>
#include<mutex>
//#define DEBUG
//#define RUNTIME
//#define PROCESS
vector<double> MCTS::runTime = vector<double>(10, 0);
double MCTS::gamma = 0.1;
int MCTS::iteratorNumber = 100;
int MCTS::grow = 15;
double MCTS::C = 0.6;
queue<int> MCTS::lis;
mutex mut;
MCTS::MCTS()
{
	updateTimes = 0;
	Tree = new Node[NON_USED];
	for (int i = 0;i < NON_USED;i++)
		nonUsed.push(i);
}

MCTS::~MCTS()
{
	delete[] Tree;
}
void MCTS::init(QCircuit* QC, int n, int m, map<int,int> _pi) {
	State s(QC, n, m, _pi);
	mut.lock();
	root = nonUsed.front();
	Tree[root] = Node(s);
	nonUsed.pop();
	mut.unlock();
}
void MCTS::distribute(MCTS* m, int p, int t) {
	if (t == 0)
		return;
	if (m->Tree[p].N == 0) {
		m->simulate(p);
		m->Tree[p].N++;
		t--;
	}
	if (t > 0 && m->Tree[p].childs.empty()) {
		m->expand(p);
		if (m->Tree[p].childs.empty()){
			m->Tree[p].N += t;
			return;
		}
	}
	map<int, int> ss;
	for (int i : m->Tree[p].childs) {
		ss[i] = 0;
	}
	while(t) {
		int np = -1;
		double maxA = -1, h = -1, l = INT_MAX;
		for (int i : m->Tree[p].childs) {
			h = max(h, m->Tree[i].mQ); l = min(l, m->Tree[i].mQ);
		}
		for (int i : m->Tree[p].childs) {
			double a;
			if (m->Tree[i].N == 0) {
				np = i;
				break;
			}
			double sq = sqrt(m->Tree[p].N * 1.0 / m->Tree[i].N);
			a = (m->Tree[i].mQ - l) * 1.0 / (h - l + 1) + sq * C;
			if (a > maxA) {
				np = i;
				maxA = a;
			}
		}
		if (np != -1) {
			ss[np]++;
			m->Tree[np].N++;
		}
		m->Tree[p].N++;
		t--;		
	}
	vector<thread> ts;
	for (auto& it : ss) {
		if (it.second) {
			m->Tree[it.first].N -= it.second;
			ts.push_back(thread(distribute, m, it.first, it.second));
		}
	}
	for (auto it = ts.begin();it != ts.end();it++) {
		it->join();
	}
}
void MCTS::expand(int p) {
	mut.lock();
	Tree[p].s.li = lis.front();
	lis.pop();
	mut.unlock();

	Tree[p].s.actions(1);
	auto& aa = Tree[p].s.availableActions;
	for (auto i=aa.begin();i != aa.end();i++) {
		auto g = i->first;
		State s = Tree[p].s;
		int H = Tree[root].s.highest + grow;
		int imr = 0;
		if (g.tau != 6)
		imr = g.wei * g.q.size() * min(g.tau, max(0, H - i->second)) / g.tau;
		s.launch(g);
		Node n(s);
		n.imR = imr;
		n.parent = p;

		mut.lock();
		if(nonUsed.empty()){
			cout<<"expand error : nonused empty !\n";
			cin.get();
		}
		int index = nonUsed.front();
		nonUsed.pop();
		mut.unlock();

		if (g.tau != 6) {
			for (int& q : g.q) {
				q = Tree[p].s.pi[q];
			}
		}
		n.a = g;
		Tree[index] = n;
		Tree[p].childs.insert(index);
	}
	mut.lock();
	lis.push(Tree[p].s.li);
	mut.unlock();
}
double MCTS::simulate(int p) {
	State s = Tree[p].s;
	int H = Tree[root].s.highest + grow;
	mut.lock();
	s.li = lis.front();
	lis.pop();
	mut.unlock();
	double value = Tree[p].mQ = s.simulate(H);
	mut.lock();
	lis.push(s.li);
	mut.unlock();
	return value;
}
void MCTS::threadSimulate(MCTS* m, int p) {
	//a->m->simulate(a->p);
	m->simulate(p);
}
double MCTS::upgrade(int p) {
	double m = -1;
	for (int i : Tree[p].childs) {
		m = max(upgrade(i), m);
	}
	if (m + Tree[p].imR > Tree[p].mQ) {
		Tree[p].mQ = m + Tree[p].imR; Tree[p].ut++;
	}
	return Tree[p].mQ;
}
void MCTS::prune(int p) {
	// int saveN=Tree[p].N;
	// map<int,int> cn;
	// for(int i:Tree[p].childs){
	// 	cn[i]=Tree[i].N;
	// }
	if (!Tree[p].childs.size())
		return;
	bool flag = false;
	if (Tree[p].childs.size() > 5 \
		&& Tree[p].N > Tree[p].childs.size()\
		&& Tree[p].N > Tree[p].gr * Tree[p].lastN) {
		vector<int> cc;
		double h = -1, l = INT_MAX;
		for (int i : Tree[p].childs) {
			h = max(h, Tree[i].mQ); l = min(l, Tree[i].mQ);
		}
		for (int i : Tree[p].childs) {
			if (Tree[i].mQ < (2 * l + h) / 3)
				cc.push_back(i);
		}
		for (int i : cc) {
			gc(i);
			Tree[p].childs.erase(i);
		}
		flag = true;
	}
	for (int i : Tree[p].childs)
		prune(i);
	if (Tree[p].N) {
		Tree[p].N = 1;
	}
	for (int i : Tree[p].childs) {
		Tree[p].N += Tree[i].N;
	}
	if (flag) {
		Tree[p].lastN = Tree[p].N - 1;
		Tree[p].gr = max(2, Tree[p].gr - 1);
	}
	// if(Tree[p].N > saveN){
	// 	cout<<"prune error :\nbefore "<<saveN<<"\n";
	// 	for(auto it : cn){
	// 		cout<<it.first<<" "<<it.second<<", ";
	// 	}cout<<"\n";
	// 	cout<<"after "<<Tree[p].N<<"\n";
	// 	for(int i:Tree[p].childs){
	// 		cout<<i<<" "<<Tree[i].N<<", ";
	// 	}cout<<"\n";
	// 	cin.get();
	// }
}
void MCTS::decision() {
	double mq = -1, mtq = INT_MAX;
	int nr = -1;
	for (int i : Tree[root].childs) {
		auto g = Tree[i].a;
		if (Tree[i].mQ > mq || (Tree[i].mQ == mq && Tree[i].N < mtq)) {
			mq = Tree[i].mQ;
			mtq = Tree[i].totalQ;
			nr = i;
		}
	}
	for (int i : Tree[root].childs) {
		if (i != nr) {
			gc(i);
		}
	}
#ifdef PROCESS
	QGate& g = Tree[nr].a;
	for (int& q : g.q)
		cout << q << " ";
	cout << "\n";
#endif // PROCESS
	mut.lock();
	nonUsed.push(root);
	mut.unlock();
	schedulingSequence.emplace_back(Tree[nr].a, Tree[root].s.exeTime(Tree[nr].a) + 1);
	root = nr;
	for (int i : Tree[root].childs) {
		gc(i);
	}
	Tree[root].reset();
}
void MCTS::gc(int r) {
	mut.lock();
	nonUsed.push(r);
	mut.unlock();
	for (int i : Tree[r].childs) {
		gc(i);
	}
}
void MCTS::getATree() {
	queue<int> q;
	q.push(root);
	while (nonUsed.size() > NON_USED - 256 && !q.empty()) {
		int p = q.front();
		q.pop();
		expand(p);
		for (int i : Tree[p].childs) {
			q.push(i);
		}
	}
}
void MCTS::start() {
	int step = 0;
	bool flag = false;
	while (!Tree[root].s.FrontGates.empty()) {
		for (int i = 0;i < iteratorNumber;) {
			clock_t _s, _e;
			distribute(this, root, SIM_NUM_PER_ITER);
			upgrade(root);
			i += SIM_NUM_PER_ITER;
			prune(root);
			//printTree(root, 1);
			//cin.get();
			if (nonUsed.size() < 50000)
				break;
		}
		decision();
		auto& g = Tree[root].a;
	}
	result = Tree[root].s.getResult();
}
void MCTS::debug() {
	for (int i = 0;i < 10;i++)
		runTime[i] = 0;
}
void MCTS::printTree(int r, int layer) {
	if (layer == 0) {
		cout << setiosflags(ios::fixed) << setprecision(2);
		for (int& q : Tree[r].a.q) {
			cout << q << " ";
		}
		cout << Tree[r].mQ << " " << Tree[r].ut << " " << Tree[r].N;
		return;
	}
	bool flag = true;
	for (int i : Tree[r].childs) {
		if (flag)
			flag = false;
		else 
			cout << "\n";
		printTree(i, layer - 1);
	}
	cout << "    ";
	cout << setiosflags(ios::fixed) << setprecision(2);
	for (int& q : Tree[r].a.q) {
		cout << q << " ";
	}
	cout << Tree[r].mQ << " " << Tree[r].ut << " " << Tree[r].N;
}