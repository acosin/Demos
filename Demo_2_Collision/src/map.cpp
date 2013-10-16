#include "map.h"

Map::Map()
{
	m_Position=CIwSVec2(0,0);
}

Map::~Map()
{
	delete _image;
}

void Map::Load()
{
	_image=Iw2DCreateImageResource("map_edit");
	_size=CIwSVec2(_image->GetWidth(),_image->GetHeight());
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
	Iw2DDrawImage(_image, CIwSVec2((iwsfixed)m_Position.x*-1, (iwsfixed)m_Position.y*-1));
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
	if(pos.x+Iw2DGetSurfaceWidth()>_size.x)
	{
		pos.x=_size.x-Iw2DGetSurfaceWidth();
		return false;
	}
	if(pos.y+Iw2DGetSurfaceHeight()>_size.y)
	{
		pos.y=_size.y-Iw2DGetSurfaceHeight();
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
	if(m_Position.x+Iw2DGetSurfaceWidth()>_size.x)
	{
		m_Position.x=_size.x-Iw2DGetSurfaceWidth();
		return false;
	}
	if(m_Position.y+Iw2DGetSurfaceHeight()>_size.y)
	{
		m_Position.y=_size.y-Iw2DGetSurfaceHeight();
		return false;
	}
	return true;
}
CIwSVec2 Map::GetMapSize()
{
	return _size;
}