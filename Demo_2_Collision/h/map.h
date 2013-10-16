#ifndef MAP_H
#define MAP_H
#include "Iw2D.h"

class Map
{
public:
	CIwFVec2 m_Position; // position for MAP
	CIwFVec2 m_PositionPrev; // previous position for MAP
	Map();
	~Map();
	void Load();
	void Update(int deltaTime);
	void Change();
	void Render();
	CIwSVec2 GetMapSize();
	bool CheckMapEdge(CIwFVec2 &delta);
	bool CheckMapEdge();
	
private:
	CIw2DImage* _image;
	
    CIwSVec2 _size; // character size

};

#endif