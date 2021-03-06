#ifndef MAP_H
#define MAP_H
#include "Iw2D.h"

class Map
{
public:
	Map();
	~Map();
	void Load();
	void Update(int deltaTime);
	void Change();
	void Render();
	CIwSVec2 GetMapSize();
	bool CheckMapEdge(CIwFVec2 &delta);
	bool CheckMapEdge();
	CIwFVec2 m_Position; // position for character
private:
	CIw2DImage* m_image;
	
    CIwSVec2 m_Size; // character size

};

#endif