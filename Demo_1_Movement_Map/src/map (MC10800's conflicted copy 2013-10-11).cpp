#include "map.h"
#include "Iw2D.h"

Map::Map()
{
	m_Position=CIwFVec2(0,0);
}

Map::~Map()
{
	delete m_image;
}

void Map::Load()
{
	m_image=Iw2DCreateImageResource("map");
	m_Size=CIwSVec2(m_image->GetWidth(),m_image->GetHeight());
}

void Map::Update(int deltaTime)
{
	//DO NOTING CURRENTLY
}

void Map::Change()
{

}
void Map::Render()
{
	Iw2DDrawImage(m_image, CIwSVec2((iwsfixed)m_Position.x*-1, (iwsfixed)m_Position.y*-1));
}
bool Map::CheckMapEdge(CIwFVec2 &pos)
{
	if(pos.x<0)
	{
		pos.x=0;
		return false;
	}
	if(pos.y<0)
	{
		pos.y=0;
		return false;
	}
	if(pos.x+Iw2DGetSurfaceWidth()>m_Size.x)
	{
		pos.x=m_Size.x-Iw2DGetSurfaceWidth();
		return false;
	}
	if(pos.y+Iw2DGetSurfaceHeight()>m_Size.y)
	{
		pos.y=m_Size.y-Iw2DGetSurfaceHeight();
		return false;
	}
	return true;
}
bool Map::CheckMapEdge()
{
	if(m_Position.x<0)
	{
		m_Position.x=0;
		return false;
	}
	if(m_Position.y<0)
	{
		m_Position.y=0;
		return false;
	}
	if(m_Position.x+Iw2DGetSurfaceWidth()>m_Size.x)
	{
		m_Position.x=m_Size.x-Iw2DGetSurfaceWidth();
		return false;
	}
	if(m_Position.y+Iw2DGetSurfaceHeight()>m_Size.y)
	{
		m_Position.y=m_Size.y-Iw2DGetSurfaceHeight();
		return false;
	}
	return true;
}
CIwSVec2 Map::GetMapSize()
{
	return m_Size;
}