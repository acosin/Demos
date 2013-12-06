#include "button.h"

void Button::Load(char * imagename,CIwSVec2 pos)
{
	_image=Iw2DCreateImageResource(imagename);
	m_ImgSize=CIwSVec2(_image->GetWidth(),_image->GetHeight());
	m_BGSize=CIwSVec2(_image->GetWidth(),_image->GetHeight());
	m_ImgPos=pos;
	m_BGPos=pos;
	btn_type=IMAGE;
}
void Button::SetBG(BTN_TYPE type, CIwSVec2 pos, CIwSVec2 size,uint32 color)
{
	btn_type=type;
	m_BGPos=pos;
	m_BGSize=size;
	bg_color=color;
}
void Button::SetText(char * text, CIwSVec2 pos, CIwSVec2 size,uint32 color)
{
	m_text=text;
	m_TextPos=pos;
	m_TextSize=size;
	text_color=color;
	btn_type=TEXT;
}
void Button::Render()
{
	if(btn_type==IMAGE)
		Iw2DDrawImage(_image, m_ImgPos);
	else
	{
		Iw2DSetColour(bg_color);
		if(btn_type==RECT||btn_type==TEXT)
			Iw2DFillRect(m_BGPos,m_BGSize);
		else if(btn_type==SPHERE)
			Iw2DFillArc(m_BGPos+CIwSVec2(m_BGSize.x/2,m_BGSize.y/2), m_BGSize, iwangle(0), iwangle(0x1600), 40);
		if(btn_type==TEXT)
		{
			uint8 rgb[4];
			rgb[0]=(text_color & 0x000000ff);//A
			rgb[1]=(text_color & 0x0000ff00) >>8;//B
			rgb[2]=(text_color & 0x00ff0000) >>16;//G
			rgb[3]=(text_color & 0xff000000) >>24;//R
			IwGxPrintSetColour(rgb[3], rgb[2], rgb[1]);
			IwGxPrintSetScale(2);
			IwGxPrintString(m_TextPos.x, m_TextPos.y, m_text);
			
		}
		Iw2DSetColour(C_WHITE);
	}
	
}
bool Button::IsTouched()
{
	if(isDisplay)
	{
		if(current_States==S3E_POINTER_STATE_DOWN)
		{
			CIwFVec2 touch=GetTouches(S3E_POINTER_STATE_DOWN);
			if(touch.x>=m_BGPos.x&&touch.x<=m_BGPos.x+m_BGSize.x
				&&touch.y>=m_BGPos.y&&touch.y<=m_BGPos.y+m_BGSize.y)
				return true;
		}
	}
	return false;
}