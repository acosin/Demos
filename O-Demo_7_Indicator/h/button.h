#ifndef BUTTON_H
#define BUTTON_H
#include "Iw2D.h"
#include "input.h"

enum BTN_TYPE
{
	RECT=0,
	SPHERE=1,
	IMAGE=2,
	TEXT=3
};


class Button
{
public:
	bool isDisplay;
	CIw2DImage* _image;
	CIwSVec2 _Size;
	CIwSVec2 m_ImgPos;
	CIwSVec2 m_TextPos;
	CIwSVec2 m_BGPos;
	CIwSVec2 m_ImgSize;
	CIwSVec2 m_TextSize;
	CIwSVec2 m_BGSize;
	uint32 bg_color;
	char * m_text;
	uint32 text_color;
	BTN_TYPE btn_type;
	int m_id;

	Button(){isDisplay=false;}
	~Button(){if(_image) delete _image;}
	
	void Render();
	void Load(char * imagename,CIwSVec2 pos);
	void SetBG(BTN_TYPE type, CIwSVec2 pos, CIwSVec2 size,uint32 color);
	void SetText(char * text, CIwSVec2 pos, CIwSVec2 size,uint32 color);
	bool IsTouched();

};

#endif