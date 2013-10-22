#ifndef TILE_H
#define TILE_H
#include <vector>
#include "Iw2D.h"
#include "obstacle.h"
using std::vector;

class Tile
{
public:
	CIwFVec2 m_Position; // position for tile
	int m_Rotation;
	int m_CollisionEdge[4];
	vector<Obstacle> m_Edges; 
	Tile();
	Tile(CIwFVec2 pos,char* file,int rotate);
	~Tile();
	void Load();
	void Render(CIwFVec2 mapPos,bool highlight,CIwSVec2 characterBox);
	void Rotate();
	void Update();
	Obstacle CreateObstacle(CIwFVec2 pos,CIwSVec2 size,bool display);
	void UpdateObstacle();
	void InitialObstacle();
	bool CheckCollision(CIwFVec2 characterPos , CIwSVec2 characterBox,CIwFVec2 &target,CIwFVec2 characterPrePos);
private:
	CIw2DImage* _image;
	CIwSVec2 _Size; // character size
	char* _filename;
};

#endif