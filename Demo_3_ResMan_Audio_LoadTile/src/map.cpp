#include "map.h"

Map::Map()
{
	m_Position=CIwSVec2(0,0);
}

Map::~Map()
{
	delete _image;
	delete _layer;
}

void Map::Load()
{
	_image=Iw2DCreateImageResource("map_edit");
	_size=CIwSVec2(100*32,100*32);
	_layer=new Layer;
	_layer->Init();
}

void Map::Update(int deltaTime)
{
	//DO NOTING CURRENTLY
}


void Map::Render(CIwSVec2 characterBox)
{
	//Iw2DDrawImage(_image, CIwSVec2((iwsfixed)m_Position.x*-1, (iwsfixed)m_Position.y*-1));
	//CIwSVec2 topleft=CIwSVec2((iwsfixed)m_Position.x*-1, (iwsfixed)m_Position.y*-1);
	//for(int x=0;x!=32;x++)
	//{
	//	for(int y=0;y!=32;y++)
	//	{
	//		CIwSVec2 pos = CIwSVec2((int16)(y * 32), (int16)(y * 32));

	//		Iw2DDrawImageRegion(_image, topleft + pos, pos, CIwSVec2(32, 32));
	//	}
	//}
	_layer->Render(m_Position);
	//_Tiles->Render(m_Position,characterBox);
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
		pos.x=(float)_size.x-Iw2DGetSurfaceWidth();
		return false;
	}
	if(pos.y+Iw2DGetSurfaceHeight()>_size.y)
	{
		pos.y=(float)_size.y-Iw2DGetSurfaceHeight();
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
		m_Position.x=(float)_size.x-Iw2DGetSurfaceWidth();
		return false;
	}
	if(m_Position.y+Iw2DGetSurfaceHeight()>_size.y)
	{
		m_Position.y=(float)_size.y-Iw2DGetSurfaceHeight();
		return false;
	}
	return true;
}

CIwSVec2 Map::GetMapSize()
{
	return _size;
}