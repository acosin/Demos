#include "obstacle.h"

#define C_BLUE 0xffff0000
#define C_GREEN 0xff00ff00
#define C_RED 0xff0000ff
#define C_BLACK 0xff000000
#define C_WHITE 0xffffffff

Obstacle::Obstacle()
{
	m_Display=false;
	_Hit=false;
}

Obstacle::~Obstacle()
{
}

void Obstacle::Rotate(int degree)
{
}

void Obstacle::RotateWithOther(int degree,CIwFVec2 rotateCeneterPos)
{
}
bool Obstacle::CollisionDetect(CIwFVec2 characterPos , CIwSVec2 characterBox)
{
	//TODO: CHECK COLLISION FOR OBSTACLE
	float limit_L=m_Position.x-characterBox.x/2.0f;
	float limit_R=m_Position.x+m_Size.x+characterBox.x/2.0f;
	float limit_U=m_Position.y-characterBox.y/2.0f;
	float limit_D=m_Position.y+m_Size.y+characterBox.y/2.0f;

	if(characterPos.x>limit_L && characterPos.x<limit_R 
		&& characterPos.y>limit_U && characterPos.y<limit_D)
	{
		_Hit=true;
		return _Hit;
	}
	_Hit=false;
	return _Hit;

}
int Obstacle::CollisionSide(CIwFVec2 characterPos , CIwSVec2 characterBox, CIwFVec2 &target)
{
	float limit_L=m_Position.x-characterBox.x/2.0f;
	float limit_R=m_Position.x+m_Size.x+characterBox.x/2.0f;
	float limit_U=m_Position.y-characterBox.y/2.0f;
	float limit_D=m_Position.y+m_Size.y+characterBox.y/2.0f;
	float t_c,t_t;//corner tangta,target tangta
	int side=-1;
	if(characterPos.x<limit_L)
	{
		if(characterPos.y<limit_U)//top-left
		{
			t_c=(limit_L-characterPos.x)/(limit_U-characterPos.y);
			t_t=(target.x-characterPos.x)/(target.y-characterPos.y);
			if(t_c>t_t)//leftside
				side= 4;
			else //top side
				side= 1;
		}
		else if(characterPos.y<limit_D)
			side= 4;//left
		else//bottom-left
		{
			t_c=(limit_L-characterPos.x)/(characterPos.y-limit_D);
			t_t=(target.x-characterPos.x)/(characterPos.y-target.y);
			if(t_c>t_t)//leftside
				side= 4;
			else //bottom side
				side= 3;
		}
	}
	else if(characterPos.x<limit_R)
	{
		if(characterPos.y<limit_U)
			side= 1;//top
		else if(characterPos.y<limit_D)
			side= 0;//inside
		else
			side= 3;//bottom
	}
	else
	{
		if(characterPos.y<limit_U)//top-right
		{
			t_c=(characterPos.x-limit_R)/(limit_U-characterPos.y);
			t_t=(characterPos.x-target.x)/(target.y-characterPos.y);
			if(t_c>t_t)//rightside
				side= 2;
			else //top side
				side= 1;
		}
		else if(characterPos.y<limit_D)
			side= 2;//right
		else//bottom-right
		{
			t_c=(limit_R-characterPos.x)/(characterPos.y-limit_U);
			t_t=(target.x-characterPos.x)/(characterPos.y-target.y);
			if(t_c>t_t)//rightside
				side= 2;
			else //bottom side
				side= 3;
		}
	}
	switch(side)
	{
	case -1://error
		break;
	case 0://inside
		break;
	case 1://top
		target.y=limit_U-target.y+limit_U;
		break;
	case 2://right
		target.x=limit_R-target.x+limit_R;
		break;
	case 3://bottom
		target.y=limit_D-target.y+limit_D;
		break;
	case 4://left
		target.x=limit_L-target.x+limit_L;
		break;
	}
	return side;//error code
}
void Obstacle::Render(CIwFVec2 mapPos,CIwSVec2 characterBox)
{
	if(m_Display)
	{
		//obstacle
		if(_Hit)
		{
			//check boundary
			Iw2DSetColour(C_RED);
			Iw2DDrawRect(CIwSVec2((iwsfixed)(m_Position.x-mapPos.x)-characterBox.x/2, (iwsfixed)(m_Position.y-mapPos.y)-characterBox.y/2), m_Size+characterBox);
		}
		else
			Iw2DSetColour(C_BLACK);
		Iw2DFillRect(CIwSVec2((iwsfixed)(m_Position.x-mapPos.x), (iwsfixed)(m_Position.y-mapPos.y)), m_Size);
		Iw2DSetColour(C_WHITE);
	}
}