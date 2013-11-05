#include "ui.h"

void UI::Load()
{
	_image=Iw2DCreateImageResource("button");
	_Size=CIwSVec2(_image->GetWidth(),_image->GetHeight());
	m_Position=CIwSVec2(Iw2DGetSurfaceWidth()-_Size.x,0);
}

void UI::Render()
{
	Iw2DDrawImage(_image, m_Position);
}
bool UI::IsTouched()
{
	if(current_States==S3E_POINTER_STATE_DOWN)
	{
		CIwFVec2 touch=GetTouches(S3E_POINTER_STATE_DOWN);
		if(touch.x>=m_Position.x&&touch.x<=m_Position.x+_Size.x
			&&touch.y>=m_Position.y&&touch.y<=m_Position.y+_Size.y)
			return true;
	}
	return false;
}