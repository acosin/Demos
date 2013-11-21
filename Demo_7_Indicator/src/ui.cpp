#include "ui.h"

void UI::Load()
{
	m_btnPause=new Button;
	m_btnPause->m_id=BTN_PAUSE;
	m_btnPause->isDisplay=true;
	isMusicPlay=true;
	//m_btn->Load("pause",CIwSVec2(Iw2DGetSurfaceWidth()-64,0));
	m_btnPause->SetBG(SPHERE,CIwSVec2(Iw2DGetSurfaceWidth()-64,0),CIwSVec2(64,64),0xffff0000);
	m_btnPause->SetText("PAUSE",CIwSVec2(Iw2DGetSurfaceWidth()-62,28),CIwSVec2(64,64),0xff00ff00);


	m_PausePanel=new Panel;
	m_PausePanel->Load();
	m_PausePanel->SetBG(CIwSVec2(Iw2DGetSurfaceWidth()/2+50,Iw2DGetSurfaceHeight()/2-80),CIwSVec2(150,150),0x88888888);
	m_PausePanel->SetText("Menu",CIwSVec2(Iw2DGetSurfaceWidth()/2+50,Iw2DGetSurfaceHeight()/2-80),2,0x00008800);


	Button *m_btnMusic=new Button;
	m_btnMusic->m_id=BTN_P_MUSIC;
	m_btnMusic->SetBG(RECT,CIwSVec2(Iw2DGetSurfaceWidth()/2+64,Iw2DGetSurfaceHeight()/2-64),CIwSVec2(100,20),0xffff0000);
	m_btnMusic->SetText("Music",CIwSVec2(Iw2DGetSurfaceWidth()/2+66,Iw2DGetSurfaceHeight()/2-60),CIwSVec2(64,64),0xff00ff00);
	m_PausePanel->m_btns.append(m_btnMusic);

	Button *m_btnRestart=new Button;
	m_btnRestart->m_id=BTN_P_RESTART;
	m_btnRestart->SetBG(RECT,CIwSVec2(Iw2DGetSurfaceWidth()/2+64,Iw2DGetSurfaceHeight()/2-32),CIwSVec2(100,20),0xffff0000);
	m_btnRestart->SetText("Restart",CIwSVec2(Iw2DGetSurfaceWidth()/2+66,Iw2DGetSurfaceHeight()/2-28),CIwSVec2(64,64),0xff00ff00);
	m_PausePanel->m_btns.append(m_btnRestart);

	Button *m_btnReturn=new Button;
	m_btnReturn->m_id=BTN_P_RETURN;
	m_btnReturn->SetBG(RECT,CIwSVec2(Iw2DGetSurfaceWidth()/2+64,Iw2DGetSurfaceHeight()/2),CIwSVec2(100,20),0xffff0000);
	m_btnReturn->SetText("Continue",CIwSVec2(Iw2DGetSurfaceWidth()/2+66,Iw2DGetSurfaceHeight()/2+4),CIwSVec2(64,64),0xff00ff00);
	m_PausePanel->m_btns.append(m_btnReturn);

	Button *m_btnQuit=new Button;
	m_btnQuit->m_id=BTN_P_QUIT;
	m_btnQuit->SetBG(RECT,CIwSVec2(Iw2DGetSurfaceWidth()/2+64,Iw2DGetSurfaceHeight()/2+32),CIwSVec2(100,20),0xffff0000);
	m_btnQuit->SetText("Quit",CIwSVec2(Iw2DGetSurfaceWidth()/2+66,Iw2DGetSurfaceHeight()/2+36),CIwSVec2(64,64),0xff00ff00);
	m_PausePanel->m_btns.append(m_btnQuit);

	
	m_EndPanel=new Panel;
	//m_EndPanel->Load();
	m_EndPanel->Load("FinishPanel",CIwSVec2(Iw2DGetSurfaceWidth()/2-200,Iw2DGetSurfaceHeight()/2-80));
	//m_EndPanel->SetBG(CIwSVec2(Iw2DGetSurfaceWidth()/2-200,Iw2DGetSurfaceHeight()/2-80),CIwSVec2(400,300),0x88888888);
	//m_EndPanel->SetText("Level Cleared",CIwSVec2(Iw2DGetSurfaceWidth()/2-50,Iw2DGetSurfaceHeight()/2-70),2,0x00008800);
	
	Button *m_btnEndRestart=new Button;
	m_btnEndRestart->m_id=BTN_E_RESTART;
	m_btnEndRestart->SetBG(RECT,CIwSVec2(Iw2DGetSurfaceWidth()/2-154,Iw2DGetSurfaceHeight()/2+180),CIwSVec2(100,20),0xffff0000);
	m_btnEndRestart->SetText("Restart",CIwSVec2(Iw2DGetSurfaceWidth()/2-150,Iw2DGetSurfaceHeight()/2+184),CIwSVec2(64,64),0xff00ff00);
	m_EndPanel->m_btns.append(m_btnEndRestart);

	Button *m_btnEndReturn=new Button;
	m_btnEndReturn->m_id=BTN_E_RETURN;
	m_btnEndReturn->SetBG(RECT,CIwSVec2(Iw2DGetSurfaceWidth()/2+50,Iw2DGetSurfaceHeight()/2+180),CIwSVec2(100,20),0xffff0000);
	m_btnEndReturn->SetText("Continue",CIwSVec2(Iw2DGetSurfaceWidth()/2+54,Iw2DGetSurfaceHeight()/2+184),CIwSVec2(64,64),0xff00ff00);
	m_EndPanel->m_btns.append(m_btnEndReturn);

}

void UI::Render()
{
	m_btnPause->Render();
	m_PausePanel->Render();
	m_EndPanel->Render();
}
int UI::IsTouched()
{
	if(m_btnPause->IsTouched())
	{
		m_PausePanel->SetVisible(true);
		return m_btnPause->m_id;
	}
	int btn_id=m_PausePanel->IsTouched();
	if(m_PausePanel->isDisplay&&btn_id>=0)
	{
		m_PausePanel->SetVisible(false);
		if(btn_id==BTN_P_MUSIC)
			isMusicPlay=!isMusicPlay;
		return btn_id;
	}
	btn_id=m_EndPanel->IsTouched();
	if(m_EndPanel->isDisplay&&btn_id>=0)
	{
		m_EndPanel->SetVisible(false);
		return btn_id;
	}
	return -1;
}