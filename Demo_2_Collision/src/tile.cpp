#include "tile.h"
#include <string>
using namespace std;

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
	delete _imageH;
}

void Tile::Load()
{
	_image=Iw2DCreateImageResource(_filename);
	string file=_filename;
	file.append("_h");
	_imageH=Iw2DCreateImageResource(file.c_str());

	_Size=CIwSVec2(_image->GetWidth(),_image->GetHeight());
	if(_filename=="MiM_DownRight")
	{
		int temp_arr[4]={0,1,1,0};
		memcpy(m_CollisionDirection,temp_arr,sizeof(temp_arr));
	}
	if(_filename=="MiM_LeftRight")
	{
		int temp_arr[4]={0,1,0,1};
		memcpy(m_CollisionDirection,temp_arr,sizeof(temp_arr));
	}
}

void Tile::Render(CIwFVec2 mapPos,bool highlight)
{
	if(!highlight)
		Iw2DDrawImage(_image, CIwSVec2((iwsfixed)(m_Position.x-mapPos.x), (iwsfixed)(m_Position.y-mapPos.y)));
	else
		Iw2DDrawImage(_imageH, CIwSVec2((iwsfixed)(m_Position.x-mapPos.x), (iwsfixed)(m_Position.y-mapPos.y)));
}

void Tile::Rotate()
{
}

void Tile::Update()
{
}

bool Tile::CheckCollision(CIwFVec2 characterPos, CIwSVec2 characterBox,CIwFVec2 &target)
{
	bool collide=false;
	for(int i=0;i!=4;i++)
	{
		if(m_CollisionDirection[i]==1)
		{
			CIwFVec2 collisionPos;
			CIwSVec2 collisionBox;
			switch(i)
			{
			case 0:
				collisionPos=m_Position+CIwFVec2(32,2);
				collisionBox=CIwSVec2(64,4);
				break;
			case 1:
				collisionPos=m_Position+CIwFVec2(62,32);
				collisionBox=CIwSVec2(4,64);
				break;
			case 2:
				collisionPos=m_Position+CIwFVec2(32,62);
				collisionBox=CIwSVec2(64,4);
				break;
			case 3:
				collisionPos=m_Position+CIwFVec2(2,32);
				collisionBox=CIwSVec2(4,64);
				break;
			}
			if(CheckCollision(collisionPos,collisionBox,characterPos,characterBox))
			{
				if(characterPos.x<collisionPos.x)
					target.x=characterPos.x=collisionPos.x-collisionBox.x/2.0f-characterBox.x/2.0f;
				else if(characterPos.x>collisionPos.x)
					target.x=characterPos.x=collisionPos.x+collisionBox.x/2.0f+characterBox.x/2.0f;
				if(characterPos.y<collisionPos.y)
					target.y=characterPos.y=collisionPos.y-collisionBox.y/2.0f-characterBox.y/2.0f;
				else if(characterPos.x>collisionPos.x)
					target.y=characterPos.y=collisionPos.y+collisionBox.y/2.0f+characterBox.y/2.0f;

				collide=true;
			}
			
		}
	}
	return collide;
}

bool Tile::CheckCollision(CIwFVec2 collisionPos,CIwSVec2 collisionBox,CIwFVec2 characterPos, CIwSVec2 characterBox)
{
	float limit_L=collisionPos.x-(collisionBox.x+characterBox.x)/2.0f;
	float limit_R=collisionPos.x+(collisionBox.x+characterBox.x)/2.0f;
	float limit_U=collisionPos.y-(collisionBox.y+characterBox.y)/2.0f;
	float limit_D=collisionPos.y+(collisionBox.y+characterBox.y)/2.0f;
	if(characterPos.x>limit_L && characterPos.x<limit_R 
		&& characterPos.y>limit_U && characterPos.y<limit_D)
		return true;

	return false;
}