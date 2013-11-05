#ifndef UI_H
#define UI_H
#include "Iw2D.h"
#include "input.h"
class UI
{
public:
	UI(){};
	~UI(){delete _image;}
	CIw2DImage* _image;
	CIwSVec2 _Size;
	CIwSVec2 m_Position;
	void Render();
	void Load();
	bool IsTouched();
};

#endif