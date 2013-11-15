#ifndef ANIMA_H
#define ANIMA_H
#include "Iw2D.h"
#include <IwArray.h>

class Anima
{
public:
	CIw2DImage* _image;
	CIwSVec2 _frameSize;
	CIwSVec2 _pos;
	CIwArray<CIwSVec2> _framePos;
	int timeElapsed;
	int _aniSpeed;//how many milisec per frame
	int _frameCount;
	int _frameIndex;
	~Anima(){delete _image;}
	void Load(char * filename,int frameCount,int aniSpeed);
	void Render();
	void DoAnima(int deltaTime);
	void SetPos(CIwSVec2 pos){_pos=pos;}
};
#endif