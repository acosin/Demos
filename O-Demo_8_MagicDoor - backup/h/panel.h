#ifndef PANEL_H
#define PANEL_H
#include "button.h"
#include <IwArray.h>
#include "Iw2D.h"
#include <iostream>
#include "stdio.h"
class Panel
{
public:
	Panel(){}
	~Panel(){m_images.clear_optimised();}
	int CharCMP(char* a, char* b,int size);
	void Render();
	void Load(char * imagename,CIwSVec2 pos);
	void Load();
	int IsTouched();
	void SetVisible(bool visible);
	CIwArray<Button*> m_btns;
	bool isMusicPlay;
	bool isDisplay;
	CIwArray<CIw2DImage*> m_images;
	char * m_text;
	std::string m_txt;
	CIwSVec2 m_BGPos;
	CIwSVec2 m_BGSize;
	CIwSVec2 m_TextPos;
	int m_TextScale;
	//uint32 text_color;
	uint8 text_color[4];
	uint32 bg_color;
	void SetText(std::string txt,CIwSVec2 m_TextPos,int scale,uint32 color);
	void SetBG(CIwSVec2 Pos,CIwSVec2 Size,uint32 color);
	void SetText(std::string txt);
};

#endif