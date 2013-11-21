#include "character.h"

#define C_BLUE 0xffff0000
#define C_GREEN 0xff00ff00
#define C_RED 0xff0000ff
#define C_BLACK 0xff000000
#define C_WHITE 0xffffffff


void Character::Load()
{
	// make character start at center of screen
	m_ScreenCenter=CIwFVec2(Iw2DGetSurfaceWidth()/2.0f,Iw2DGetSurfaceHeight()/2.0f);
	_anima_right=new Anima;
	_anima_idle=new Anima;
	//m_MOVERANGE=50.0f;
	m_HitRange=false;

	//_image=Iw2DCreateImageResource("character");
	_anima_right->Load("right",2,300);
	_anima_idle->Load("idle",2,300);

	//_Size=CIwSVec2(_image->GetWidth(),_image->GetHeight());
	m_CollisionBox=CIwSVec2(_anima_idle->_frameSize.x/2,_anima_idle->_frameSize.y/4);
}
void Character::Init(int startPoint[])
{
	_CS=idle;
	m_Target=m_Position=CIwFVec2(startPoint[0]*64,startPoint[1]*64);

}

void Character::Render(CIwFVec2 mapPos)
{
	//character
	//Iw2DDrawImage(_image, CIwSVec2(iwsfixed(m_ScreenCenter.x-_Size.x/2.0f), iwsfixed(m_ScreenCenter.y-_Size.y/2.0f-_Size.y/4.0f)));
	if(_CS==idle)
		_anima_idle->Render();
	else if(_CS==right)
		_anima_right->Render();
	//target
	Iw2DSetColour(C_GREEN);
	Iw2DFillRect(CIwSVec2(iwsfixed(m_TargetOnScreen.x),iwsfixed(m_TargetOnScreen.y)) - CIwSVec2(2,2), CIwSVec2(4,4));
	//character collision box
	//Iw2DSetColour(C_BLACK);
	//Iw2DDrawRect(CIwSVec2(iwsfixed(m_Position.x-mapPos.x), iwsfixed(m_Position.y-mapPos.y)) - m_CollisionBox/IW_FIXED(2), m_CollisionBox);
	Iw2DSetColour(C_WHITE);
}

void Character::Update(int deltaTime)
{
	//DO NOTING CURRENTLY
	if(_CS==idle)
	{
		_anima_idle->SetPos(CIwSVec2(iwsfixed(m_ScreenCenter.x-_anima_idle->_frameSize.x/2.0f), iwsfixed(m_ScreenCenter.y-_anima_idle->_frameSize.y/2.0f-_anima_idle->_frameSize.y/4.0f)));
		_anima_idle->DoAnima(deltaTime);
	}
	else if(_CS==right)
	{
		_anima_right->SetPos(CIwSVec2(iwsfixed(m_ScreenCenter.x-_anima_idle->_frameSize.x/2.0f), iwsfixed(m_ScreenCenter.y-_anima_idle->_frameSize.y/2.0f-_anima_idle->_frameSize.y/4.0f)));
		_anima_right->DoAnima(deltaTime);
	}
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