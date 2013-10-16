#include "obstacle.h"

#define C_BLUE 0xffff0000
#define C_GREEN 0xff00ff00
#define C_RED 0xff0000ff
#define C_BLACK 0xff000000
#define C_WHITE 0xffffffff

Obstacle::Obstacle()
{
	m_Display=false;
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
void Obstacle::CollisionDetect(CIwFVec2 characterPos , CIwSVec2 characterBox,CIwFVec2 &target)
{
	//TODO: CHECK COLLISION FOR OBSTACLE
	float limit_L=m_Position.x-characterBox.x/2.0f;
	float limit_R=m_Position.x+m_Size.x+characterBox.x/2.0f;
	float limit_U=m_Position.y-characterBox.y/2.0f;
	float limit_D=m_Position.y+m_Size.y+characterBox.y/2.0f;

	if(characterPos.x>limit_L && characterPos.x<limit_R 
		&& characterPos.y>limit_U && characterPos.y<limit_D)
	{

	}

}
void Obstacle::Render()
{
	if(m_Display)
	{
		Iw2DSetColour(C_RED);
		Iw2DFillRect(CIwSVec2((iwsfixed)m_Position.x, (iwsfixed)m_Position.y+16) - m_Size/IW_FIXED(2), CIwSVec2(32,32));
		Iw2DSetColour(C_WHITE);
	}
}