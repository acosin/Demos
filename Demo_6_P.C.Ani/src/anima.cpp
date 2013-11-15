#include "anima.h"

void Anima::Load(char * filename,int frameCount,int aniSpeed)
{
	timeElapsed=0;
	_frameIndex=0;
	_aniSpeed=aniSpeed;
	_frameCount=frameCount;
	_image=Iw2DCreateImageResource(filename);
	_frameSize=CIwSVec2(_image->GetWidth()/_frameCount,_image->GetHeight());
	for(int i=0;i!=frameCount;i++)
	{
		_framePos.append(CIwSVec2(_frameSize.x*i,_frameSize.y));
	}
}
void Anima::Render()
{
	if(timeElapsed>_aniSpeed)
	{
		_frameIndex++;
		if(_frameIndex>=_frameCount)
			_frameIndex=0;
		timeElapsed=0;
		
	}
	Iw2DDrawImageRegion(_image,_pos,_framePos[_frameIndex],_frameSize);
	//Iw2DDrawImage(_image, _pos);
}
void Anima::DoAnima(int deltaTime)
{
	timeElapsed+=deltaTime;
}