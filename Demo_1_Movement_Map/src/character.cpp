#include "character.h"
#include "Iw2D.h"

Character::Character()
{
	// make character start at center of screen
	m_Target=m_Position=m_ScreenCenter=CIwFVec2(Iw2DGetSurfaceWidth()/2.0f,Iw2DGetSurfaceHeight()/2.0f);
	m_MOVERANGE=50.0f;
	m_HitRange=false;
}


Character::~Character()
{
	delete m_image;
	delete m_imageTarget;
}

void Character::Load()
{
	m_image=Iw2DCreateImageResource("character");
	m_imageTarget=Iw2DCreateImageResource("star");
	m_Size=CIwSVec2(m_image->GetWidth(),m_image->GetHeight());
}

void Character::Render()
{
	Iw2DDrawImage(m_image, CIwSVec2((iwsfixed)m_ScreenCenter.x, (iwsfixed)m_ScreenCenter.y) - m_Size/IW_FIXED(2));
	Iw2DDrawImage(m_imageTarget, CIwSVec2((iwsfixed)(m_TargetOnScreen.x-8.0f), (iwsfixed)(m_TargetOnScreen.y-8.0f)));
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