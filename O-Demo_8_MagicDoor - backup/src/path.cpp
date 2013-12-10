#include "path.h"
#include "s3ePointer.h"
#include "Iw2D.h"
void Path::Init(int start, int end)
{
	nodes.clear_optimised();
	_start=start;
	_end=end;
	PathNode startNode;
	startNode.index=start;
	startNode.pre=-1;
	startNode.next_1=-1;
	startNode.next_2=-1;
	startNode.next_3=-1;
	nodes.append(startNode);
	
}

void Path::AddPathNode(int index,int pre)
{
	int nodeInd=nodeIndex.find(index);

	if(nodeInd==-1)
	{
		PathNode Node;
		Node.index=index;
		Node.pre=pre;
		Node.next_1=-1;
		Node.next_2=-1;
		Node.next_3=-1;
		nodes.append(Node);
		nodeIndex.append(index);
		/*int nodePre=nodeIndex.find(pre);
		if(nodePre!=-1)
		{
			if(nodes[nodePre].next_1==-1)
				nodes[nodePre].next_1=index;
			else if(nodes[nodePre].next_1!=index&&nodes[nodePre].next_2==-1)
				nodes[nodePre].next_2=index;
			else if(nodes[nodePre].next_1!=index&&nodes[nodePre].next_2!=index&&nodes[nodePre].next_3==-1)
				nodes[nodePre].next_3=index;
		}*/

	}
}
bool Path::isEnd()
{
	//if nodes contains end point then means path is connected
	IW_CALLSTACK("Path::isEnd()");
	return nodeIndex.find(_end)==-1? false:true;
}