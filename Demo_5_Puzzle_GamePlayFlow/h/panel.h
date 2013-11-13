#ifndef PANEL_H
#define PANEL_H
#include "button.h"
#include <IwArray.h>
#include "Iw2D.h"
class Panel
{
public:
	Panel(){}
	~Panel(){}
	void Render();
	void Load();
	int IsTouched();
	void SetVisible(bool visible);
	CIwArray<Button*> m_btns;
	bool isMusicPlay;
	bool isDisplay;
	CIwArray<CIw2DImage*> m_images;
	char * m_text;
	CIwSVec2 m_BGPos;
	CIwSVec2 m_BGSize;
	CIwSVec2 m_TextPos;
	int m_TextScale;
	//uint32 text_color;
	uint8 text_color[4];
	uint32 bg_color;
	void SetText(char * txt,CIwSVec2 m_TextPos,int scale,uint32 color);
	void SetBG(CIwSVec2 Pos,CIwSVec2 Size,uint32 color);
	void SetText(char* txt);
};

#endif