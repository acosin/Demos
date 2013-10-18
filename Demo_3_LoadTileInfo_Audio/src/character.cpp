#include "character.h"

#define C_BLUE 0xffff0000
#define C_GREEN 0xff00ff00
#define C_RED 0xff0000ff
#define C_BLACK 0xff000000
#define C_WHITE 0xffffffff

Character::Character()
{
	// make character start at center of screen
	m_Target=m_Position=m_ScreenCenter=CIwFVec2(Iw2DGetSurfaceWidth()/2.0f,Iw2DGetSurfaceHeight()/2.0f);
	m_MOVERANGE=50.0f;
	m_HitRange=false;
	
}


Character::~Character()
{
	delete _image;
	delete _imageTarget;
}

void Character::Load()
{
	_image=Iw2DCreateImageResource("character");
	_imageTarget=Iw2DCreateImageResource("star");
	_Size=CIwSVec2(_image->GetWidth(),_image->GetHeight());
	m_CollisionBox=CIwSVec2(_Size.x,_Size.y/2);
}

void Character::Render(CIwFVec2 mapPos)
{
	//character
	Iw2DDrawImage(_image, CIwSVec2((iwsfixed)m_ScreenCenter.x, (iwsfixed)m_ScreenCenter.y-16) - _Size/IW_FIXED(2));
	//target
	Iw2DDrawImage(_imageTarget, CIwSVec2((iwsfixed)(m_TargetOnScreen.x-8.0f), (iwsfixed)(m_TargetOnScreen.y-8.0f)));
	//character pos point
	Iw2DSetColour(C_BLACK);
	Iw2DFillRect(CIwSVec2((iwsfixed)(m_Position.x-mapPos.x), (iwsfixed)(m_Position.y-mapPos.y)) - CIwSVec2(2,2), CIwSVec2(4,4));
	//character collision box
	Iw2DSetColour(C_RED);
	Iw2DDrawRect(CIwSVec2((iwsfixed)(m_Position.x-mapPos.x), (iwsfixed)(m_Position.y-mapPos.y)) - m_CollisionBox/IW_FIXED(2), CIwSVec2(32,32));
	Iw2DSetColour(C_WHITE);
}

void Character::Update(int deltaTime)
{
	//DO NOTING CURRENTLY
	
}

float Character::GetDistanceToCenter()
{
	return (m_Position-m_ScreenCenter).GetLength();
}

float Character::GetDistanceToTarget()
{
	return (m_Target-m_Position).GetLength();
}
void Character::CheckTarget(CIwFVec2 &target)
{

}