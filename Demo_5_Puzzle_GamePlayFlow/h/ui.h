#ifndef UI_H
#define UI_H
#include "button.h"
class UI
{
public:
	UI(){}
	~UI(){}
	void Render();
	void Load();
	bool IsTouched();
	Button* m_btnPause;
	Button* m_btnMusic;
	Button* m_btnRestart;
	Button* m_btnReturn;
	Button* m_btnQuit;
};

#endif