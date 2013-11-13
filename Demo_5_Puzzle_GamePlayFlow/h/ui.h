#ifndef UI_H
#define UI_H
#include "button.h"
#include "panel.h"

#define BTN_PAUSE 0
#define BTN_P_MUSIC 1
#define BTN_P_RESTART 2
#define BTN_P_RETURN 3
#define BTN_P_QUIT 4
#define BTN_E_RESTART 5
#define BTN_E_RETURN 6


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
	Button* m_btnPause;
	
	bool isMusicPlay;
};

#endif