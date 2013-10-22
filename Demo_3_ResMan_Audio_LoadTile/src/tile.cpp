#include "tile.h"
using std::vector;
#define C_BLUE 0xffff0000
#define C_GREEN 0xff00ff00
#define C_RED 0xff0000ff
#define C_BLACK 0xff000000
#define C_WHITE 0xffffffff
#define OBSTACLESIZE 4


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
Obstacle Tile::CreateObstacle(CIwFVec2 pos,CIwSVec2 size,bool display)
{
	Obstacle edge=Obstacle();
	edge.m_Position=pos;
	edge.m_Size=size;
	edge.m_Display=display;
	return edge;
}
void Tile::InitialObstacle()
{
	CIwFVec2 pos;
	CIwSVec2 size;
	m_Edges.push_back(CreateObstacle(CIwFVec2(m_Position.x,m_Position.y),CIwSVec2(_Size.x,OBSTACLESIZE),true));
	m_Edges.push_back(CreateObstacle(CIwFVec2(m_Position.x+(float)_Size.y-OBSTACLESIZE,m_Position.y),CIwSVec2(OBSTACLESIZE,_Size.y),true));
	m_Edges.push_back(CreateObstacle(CIwFVec2(m_Position.x,m_Position.y+(float)_Size.y-OBSTACLESIZE),CIwSVec2(_Size.x,OBSTACLESIZE),true));
	m_Edges.push_back(CreateObstacle(CIwFVec2(m_Position.x,m_Position.y),CIwSVec2(OBSTACLESIZE,_Size.y),true));

	for(int i=0;i!=4;i++)
		if(m_CollisionEdge[i]==1)
			m_Edges[i].m_Block=false;
	if(m_Rotation>0)
		UpdateObstacle();
	if(m_Rotation>1)
		UpdateObstacle();
	if(m_Rotation>2)
		UpdateObstacle();
}
void Tile::UpdateObstacle()
{
	//	TODO: error check when index is incorrect
	int blockOfTopside=m_CollisionEdge[0];
	m_CollisionEdge[0]=m_CollisionEdge[3];
	m_CollisionEdge[3]=m_CollisionEdge[2];
	m_CollisionEdge[2]=m_CollisionEdge[1];
	m_CollisionEdge[1]=blockOfTopside;

	m_Edges[0].m_Block=false;
	m_Edges[1].m_Block=false;
	m_Edges[2].m_Block=false;
	m_Edges[3].m_Block=false;
	for(int i=0;i!=4;i++)
		if(m_CollisionEdge[i]==0)
			m_Edges[i].m_Block=true;
}
void Tile::Load()
{
	_image=Iw2DCreateImageResource(_filename);
	_Size=CIwSVec2(_image->GetWidth(),_image->GetHeight());
	if(_filename=="MiM_DownRight")
	{
		int temp_arr[4]={0,1,1,0};//0 means block, 1 means pass
		memcpy(m_CollisionEdge,temp_arr,sizeof(temp_arr));
	}
	if(_filename=="MiM_LeftRight")
	{
		int temp_arr[4]={0,1,0,1};//0 means block, 1 means pass
		memcpy(m_CollisionEdge,temp_arr,sizeof(temp_arr));
	}
	InitialObstacle();
}

void Tile::Render(CIwFVec2 mapPos,bool highlight,CIwSVec2 characterBox)
{
	iwangle  angle =90*m_Rotation;//90 degrees
	CIwSVec2 centre=CIwSVec2(iwsfixed(m_Position.x+(float)_Size.x/2.0f-mapPos.x),iwsfixed(m_Position.y+(float)_Size.y/2.0f-mapPos.y));
    CIwMat2D rot;
    
	rot.SetRot(IW_ANGLE_FROM_DEGREES(angle), CIwVec2(centre));
    
	if(highlight)
	{
		Iw2DSetColour(0xffff0000);
		Iw2DFillRect(CIwSVec2(iwsfixed(m_Position.x-mapPos.x), iwsfixed(m_Position.y-mapPos.y)),_Size);
		//Iw2DSetColour(C_WHITE);
	}
	Iw2DSetTransformMatrix(rot);
	Iw2DDrawImage(_image, CIwSVec2(iwsfixed(m_Position.x-mapPos.x), iwsfixed(m_Position.y-mapPos.y)));
	//Reset identity transform
	Iw2DSetTransformMatrix(CIwMat2D::g_Identity);
	for(int i=m_Edges.size();i!=0;i--)
	{
		m_Edges[i-1].Render(mapPos,characterBox);
	}
	    
    
}

void Tile::Rotate()
{// clockwise rotaion
	m_Rotation++;
	if(m_Rotation>3)
		m_Rotation=0;

	UpdateObstacle();
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