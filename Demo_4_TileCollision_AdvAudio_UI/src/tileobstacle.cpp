#include "tileobstacle.h"
#include <iostream>
using std::vector;
#define C_BLUE 0xffff0000
#define C_GREEN 0xff00ff00
#define C_RED 0xff0000ff
#define C_BLACK 0xff000000
#define C_WHITE 0xffffffff
#define OBSTACLESIZE 2

Obstacle TileObstacle::CreateObstacle(CIwFVec2 pos,CIwSVec2 size,bool display)
{
	Obstacle edge=Obstacle();
	edge.m_Position=pos;
	edge.m_Size=size;
	edge.m_Display=display;
	edge.m_Block=true;
	return edge;
}
void TileObstacle::InitialObstacle(CIwFVec2 pos,CIwSVec2 size)
{
	m_Position=pos;
	_Size=size;
	m_Edges.push_back(CreateObstacle(CIwFVec2(m_Position.x,m_Position.y),CIwSVec2(_Size.x,OBSTACLESIZE),true));
	m_Edges.push_back(CreateObstacle(CIwFVec2(m_Position.x+(float)_Size.y-OBSTACLESIZE,m_Position.y),CIwSVec2(OBSTACLESIZE,_Size.y),true));
	m_Edges.push_back(CreateObstacle(CIwFVec2(m_Position.x,m_Position.y+(float)_Size.y-OBSTACLESIZE),CIwSVec2(_Size.x,OBSTACLESIZE),true));
	m_Edges.push_back(CreateObstacle(CIwFVec2(m_Position.x,m_Position.y),CIwSVec2(OBSTACLESIZE,_Size.y),true));

}

void TileObstacle::UpdateObstacle(bool border[],CIwFVec2 pos)
{
	m_Edges[0].m_Block=border[0];
	m_Edges[1].m_Block=border[1];
	m_Edges[2].m_Block=border[2];
	m_Edges[3].m_Block=border[3];
	m_Position=pos;
	m_Edges[3].m_Position=m_Edges[0].m_Position=m_Position;
	m_Edges[1].m_Position=m_Position+CIwFVec2((float)_Size.y-OBSTACLESIZE,0);
	m_Edges[2].m_Position=m_Position+CIwFVec2(0,(float)_Size.y-OBSTACLESIZE);
}

void TileObstacle::Render(CIwFVec2 mapPos,bool highlight,CIwSVec2 characterBox,int index)
{
	if(_Collide)
	{
		if(highlight)
		{
			Iw2DSetColour(0xffff0000);
			Iw2DFillRect(CIwSVec2(iwsfixed(m_Position.x-mapPos.x), iwsfixed(m_Position.y-mapPos.y)),_Size);
			//Iw2DSetColour(C_WHITE);
		}

		for(int i=m_Edges.size();i!=0;i--)
		{
			m_Edges[i-1].Render(mapPos,characterBox);
		}
		//std::cout<<"Collide:"<<index<<std::endl;
	}
}

void TileObstacle::Update()
{
}

bool TileObstacle::CheckCollision(CIwFVec2 characterPos, CIwSVec2 characterBox,CIwFVec2 &target,CIwFVec2 characterPrePos)
{
	_Collide=false;
	for(int i=m_Edges.size();i!=0;i--)
	{
		if(m_Edges[i-1].CollisionDetect(characterPos,characterBox))
		{
			_Collide=true;
			m_Edges[i-1].CollisionSide(characterPrePos,characterBox,target);
		}
	}
	return _Collide;
}