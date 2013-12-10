#include "panel.h"
#include <iostream>
#include "stdio.h"
void Panel::Load()
{
	isMusicPlay=false;
	isDisplay=false;
	m_text="";
}
void Panel::Load(char * imagename,CIwSVec2 pos)
{
	m_images.append(Iw2DCreateImageResource(imagename));
	m_BGPos=pos;
	m_BGSize=CIwSVec2(m_images[m_images.size()-1]->GetWidth(),m_images[m_images.size()-1]->GetHeight());
	isMusicPlay=false;
	isDisplay=false;
	m_text="";
}
void Panel::SetBG(CIwSVec2 Pos,CIwSVec2 Size,uint32 color)
{
	m_BGPos=Pos;
	m_BGSize=Size;
	bg_color=color;
}
void Panel::SetVisible(bool visible)
{
	isDisplay=visible;
	for(int i=m_btns.size()-1;i!=-1;i--)
		m_btns[i]->isDisplay=isDisplay;
}
void Panel::SetText(std::string txt)
{
	m_txt = txt;
}
void Panel::SetText(std::string txt,CIwSVec2 Pos,int scale,uint32 color)
{
	text_color[0]=(color & 0x000000ff);//A
	text_color[1]=(color & 0x0000ff00) >>8;//B
	text_color[2]=(color & 0x00ff0000) >>16;//G
	text_color[3]=(color & 0xff000000) >>24;//R
	//memcpy(m_text,&txt,sizeof(txt));
	SetText(txt);
	
	m_TextPos=Pos;
	m_TextScale=scale;
}
int Panel::CharCMP(char* a, char* b,int size)
{
	int index=0;
	while(index<size)
	{
		if(a[index]!=b[index])
			return 0;
		index++;
	}
	return 1;
}
void Panel::Render()
{
	if(isDisplay){
		if(m_images.size()>0)
		{
			Iw2DDrawImage(m_images[m_images.size()-1], m_BGPos);
		}
		else
		{
			Iw2DSetColour(bg_color);
			Iw2DFillRect(m_BGPos,m_BGSize);
			Iw2DSetColour(C_WHITE);
		}
		if(m_txt.size()>0)
		{
			//std::cout<<"Show Text"<<std::endl;
			IwGxPrintSetColour(text_color[3], text_color[2], text_color[1]);
			IwGxPrintSetScale(m_TextScale);
			IwGxPrintString(m_TextPos.x, m_TextPos.y, m_txt.c_str());
		}
		for(int i=m_btns.size()-1;i!=-1;i--)
			m_btns[i]->Render();
	}
}
int Panel::IsTouched()
{
	if(isDisplay)
		for(int i=m_btns.size()-1;i!=-1;i--)
			if(	m_btns[i]->IsTouched())
			{
				//isDisplay=false;
				return m_btns[i]->m_id;
			}
	return -1;
}
