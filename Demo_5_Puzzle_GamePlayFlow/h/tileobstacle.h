#ifndef TILEOBSTACLE_H
#define TILEOBSTACLE_H
#include <vector>
#include "Iw2D.h"
#include "obstacle.h"
#include "IwGx.h"
using std::vector;

class TileObstacle
{
public:
	CIwFVec2 m_Position; // position for tile
	int m_CollisionEdge[4];
	vector<Obstacle> m_Edges; 
	
	TileObstacle(){};
	~TileObstacle(){}
	void Render(CIwFVec2 mapPos,bool highlight,CIwSVec2 characterBox,int index);
	void Update();
	Obstacle CreateObstacle(CIwFVec2 pos,CIwSVec2 size,bool display);

	void UpdateObstacle(bool border[],CIwFVec2 pos);
	void InitialObstacle(CIwFVec2 pos,CIwSVec2 size);
	bool CheckCollision(CIwFVec2 characterPos , CIwSVec2 characterBox,CIwFVec2 &target,CIwFVec2 characterPrePos);
private:
	CIwSVec2 _Size; // character size
	bool _Collide;
};

#endif