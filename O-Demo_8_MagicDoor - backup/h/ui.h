#ifndef UI_H
#define UI_H
#include "button.h"
#include "panel.h"


class UI
{
public:
	UI(){}
	~UI(){delete m_PausePanel,m_EndPanel,m_btnPause;}
	void Render();
	void Load();
	int IsTouched();
	Panel* m_PausePanel;
	Panel* m_EndPanel;
	Panel* m_VeriPanel;
	Button* m_btnPause;
	
	bool isMusicPlay;
};

#endif