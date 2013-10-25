#include "tileunit.h"
TileUnit::TileUnit()
{
	
}
TileUnit::~TileUnit()
{
}

void TileUnit::Init(int index,int xCount)
{
	m_X=index%xCount;
	m_Y=index/xCount;
	m_Size=CIwSVec2(32,32);
}

void TileUnit::Render(CIw2DImage* m_Image,CIwFVec2 topLeft)
{
	CIwSVec2 pos = CIwSVec2((int16)(m_X * m_Size.x), (int16)(m_Y * m_Size.y));
	
	Iw2DDrawImageRegion(m_Image, CIwSVec2(iwsfixed(topLeft.x),iwsfixed(topLeft.y)), pos, CIwSVec2(32, 32));
}