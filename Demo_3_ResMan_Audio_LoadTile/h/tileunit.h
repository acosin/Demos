#ifndef TILEUNIT_H
#define TILEUNIT_H
#include "Iw2D.h"

class TileUnit
{
public:
	int m_X;
	int m_Y;
	CIwSVec2 m_Size;
	TileUnit();
	~TileUnit();
	void Init(int,int);
	void Render(CIw2DImage* m_Image,CIwFVec2 mapPos);
};

#endif