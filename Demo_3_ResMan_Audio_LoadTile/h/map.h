#ifndef MAP_H
#define MAP_H
#include "Iw2D.h"
#include "tiles.h"
#include "layer.h"
#include "maze.h"
class Map
{
public:
	CIwFVec2 m_Position; // position for MAP
	CIwFVec2 m_PositionPrev; // previous position for MAP
	Map();
	~Map();
	void Load();
	void Update(int deltaTime);
	void Render(CIwSVec2 characterBox);
	CIwSVec2 GetMapSize();
	bool CheckMapEdge(CIwFVec2 &delta);
	bool CheckMapEdge();
	
private:
	//CIw2DImage* _image;
	//Tiles* _Tiles;
    CIwSVec2 _size; // character size
	Layer* _layer;
	Maze* _maze;
};

#endif