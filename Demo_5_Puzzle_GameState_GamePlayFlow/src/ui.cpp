#include "ui.h"

void UI::Load()
{
	m_btnPause=new Button;
	m_btnPause->isDisplay=true;
	//m_btn->Load("pause",CIwSVec2(Iw2DGetSurfaceWidth()-64,0));
	m_btnPause->SetBG(RECT,CIwSVec2(Iw2DGetSurfaceWidth()-64,0),CIwSVec2(64,64),0xffff0000);
	m_btnPause->SetText("PAUSE",CIwSVec2(Iw2DGetSurfaceWidth()-62,28),CIwSVec2(64,64),0xff00ff00);

	m_btnMusic=new Button;
	m_btnMusic->SetBG(RECT,CIwSVec2(Iw2DGetSurfaceWidth()/2+64,Iw2DGetSurfaceHeight()/2-64),CIwSVec2(100,20),0xffff0000);
	m_btnMusic->SetText("Music",CIwSVec2(Iw2DGetSurfaceWidth()/2+66,Iw2DGetSurfaceHeight()/2-60),CIwSVec2(64,64),0xff00ff00);

	m_btnRestart=new Button;
	m_btnRestart->SetBG(RECT,CIwSVec2(Iw2DGetSurfaceWidth()/2+64,Iw2DGetSurfaceHeight()/2-32),CIwSVec2(100,20),0xffff0000);
	m_btnRestart->SetText("Restart",CIwSVec2(Iw2DGetSurfaceWidth()/2+66,Iw2DGetSurfaceHeight()/2-28),CIwSVec2(64,64),0xff00ff00);

	m_btnReturn=new Button;
	m_btnReturn->SetBG(RECT,CIwSVec2(Iw2DGetSurfaceWidth()/2+64,Iw2DGetSurfaceHeight()/2),CIwSVec2(100,20),0xffff0000);
	m_btnReturn->SetText("Return",CIwSVec2(Iw2DGetSurfaceWidth()/2+66,Iw2DGetSurfaceHeight()/2+4),CIwSVec2(64,64),0xff00ff00);

	m_btnQuit=new Button;
	m_btnQuit->SetBG(RECT,CIwSVec2(Iw2DGetSurfaceWidth()/2+64,Iw2DGetSurfaceHeight()/2+32),CIwSVec2(100,20),0xffff0000);
	m_btnQuit->SetText("Quit",CIwSVec2(Iw2DGetSurfaceWidth()/2+66,Iw2DGetSurfaceHeight()/2+36),CIwSVec2(64,64),0xff00ff00);

	
}

void UI::Render()
{
	m_btnPause->Render();
	m_btnMusic->Render();
	m_btnRestart->Render();
	m_btnReturn->Render();
	m_btnQuit->Render();
}
bool UI::IsTouched()
{
	if(m_btnPause->IsTouched())
	{
		m_btnMusic->isDisplay=true;
		m_btnRestart->isDisplay=true;
		m_btnReturn->isDisplay=true;
		m_btnQuit->isDisplay=true;
		return true;
	}
	if(m_btnMusic->IsTouched())
	{
		m_btnMusic->isDisplay=false;
		m_btnRestart->isDisplay=false;
		m_btnReturn->isDisplay=false;
		m_btnQuit->isDisplay=false;
		return true;
	}
	if(m_btnRestart->IsTouched())
	{
		m_btnMusic->isDisplay=false;
		m_btnRestart->isDisplay=false;
		m_btnReturn->isDisplay=false;
		m_btnQuit->isDisplay=false;
		return true;
	}
	if(m_btnReturn->IsTouched())
	{
		m_btnMusic->isDisplay=false;
		m_btnRestart->isDisplay=false;
		m_btnReturn->isDisplay=false;
		m_btnQuit->isDisplay=false;
		return true;
	}
	if(m_btnQuit->IsTouched())
	{
		m_btnMusic->isDisplay=false;
		m_btnRestart->isDisplay=false;
		m_btnReturn->isDisplay=false;
		m_btnQuit->isDisplay=false;
		return true;
	}
	return false;
}