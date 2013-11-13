#ifndef PATH_H
#define PATH_H
#include "IwArray.h"

struct PathNode
{
	int pre;
	int index;
	int next_1;
	int next_2;
	int next_3;
};

class Path
{
public:
	
	CIwArray<PathNode> nodes;
	CIwArray<int> nodeIndex;
	Path(){};
	~Path(){};
	void Init(int start, int end);
	void AddPathNode(int index,int pre);
	bool isEnd();
private:
	int _start;
	int _end;
};

#endif