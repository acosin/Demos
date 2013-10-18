#include "tile.h"
using std::vector;
#define C_BLUE 0xffff0000
#define C_GREEN 0xff00ff00
#define C_RED 0xff0000ff
#define C_BLACK 0xff000000
#define C_WHITE 0xffffffff
Tile::Tile()
{
	m_Position=CIwFVec2(320.0f,320.0f);
}
Tile::Tile(CIwFVec2 pos,char* file,int rotate)
{
	m_Position=pos;
	_filename=file;
	m_Rotation=rotate;
	
}

Tile::~Tile()
{
	delete _image;
}
void Tile::AddObstacle(CIwFVec2 pos,CIwSVec2 size,bool display)
{
	Obstacle edge=Obstacle();
	edge.m_Position=pos;
	edge.m_Size=size;
	edge.m_Display=display;
	m_Edges.push_back(edge);
}
void Tile::Load()
{
	_image=Iw2DCreateImageResource(_filename);
	_Size=CIwSVec2(_image->GetWidth(),_image->GetHeight());
	if(_filename=="MiM_DownRight")
	{
		int temp_arr[4]={0,1,1,0};
		memcpy(m_CollisionDirection,temp_arr,sizeof(temp_arr));

		AddObstacle(CIwFVec2(m_Position.x,m_Position.y),CIwSVec2(_Size.x,4),true);
		AddObstacle(CIwFVec2(m_Position.x,m_Position.y),CIwSVec2(4,_Size.y),true);
	}
	if(_filename=="MiM_LeftRight")
	{
		int temp_arr[4]={0,1,0,1};
		memcpy(m_CollisionDirection,temp_arr,sizeof(temp_arr));

		AddObstacle(CIwFVec2(m_Position.x,m_Position.y),CIwSVec2(_Size.x,4),true);
		AddObstacle(CIwFVec2(m_Position.x,m_Position.y+(float)_Size.y-4),CIwSVec2(_Size.x,4),true);
	}
}

void Tile::Render(CIwFVec2 mapPos,bool highlight,CIwSVec2 characterBox)
{
	if(highlight)
	{
		Iw2DSetColour(0xffff0000);
		Iw2DFillRect(CIwSVec2((iwsfixed)(m_Position.x-mapPos.x), (iwsfixed)(m_Position.y-mapPos.y)),_Size);
		//Iw2DSetColour(C_WHITE);
	}
	Iw2DDrawImage(_image, CIwSVec2((iwsfixed)(m_Position.x-mapPos.x), (iwsfixed)(m_Position.y-mapPos.y)));
	for(int i=m_Edges.size();i!=0;i--)
	{
		m_Edges[i-1].Render(mapPos,characterBox);
	}
}

void Tile::Rotate()
{
}

void Tile::Update()
{
}

bool Tile::CheckCollision(CIwFVec2 characterPos, CIwSVec2 characterBox,CIwFVec2 &target,CIwFVec2 characterPrePos)
{
	bool collide=false;
	for(int i=m_Edges.size();i!=0;i--)
	{
		if(m_Edges[i-1].CollisionDetect(characterPos,characterBox))
		{

			collide=true;
			m_Edges[i-1].CollisionSide(characterPrePos,characterBox,target);
		}
	}
	return collide;
}