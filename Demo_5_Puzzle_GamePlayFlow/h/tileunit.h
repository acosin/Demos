#ifndef TILEUNIT_H
#define TILEUNIT_H
#include "Iw2D.h"
#include <vector>
class TileUnit
{
public:
	//vector<bool> border;
	TileUnit(){}
	~TileUnit(){}
	void Init(bool border[],bool isDoor,bool isEndPoint);
	void Rotate(int rotation);
	bool m_border[4];//true means there is obstacle at border
	bool m_borderRot[4];
	bool m_isDoor;
	bool m_isEndPoint;
};

#endif