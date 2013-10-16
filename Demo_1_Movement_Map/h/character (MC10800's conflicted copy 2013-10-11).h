#ifndef CHARACTER_H
#define CHARACTER_H
#include "Iw2D.h"

class Character 
{
public:
	CIwFVec2 m_Target; // target for character
	CIwFVec2 m_TargetOnScreen; // target for character represented on screen
	CIwFVec2 m_Position; // position for character
	CIwFVec2 m_ScreenCenter;

	float m_MOVERANGE;// within the range, map will not move with character; out of the range, map start to move
	bool m_HitRange;

	Character();
	Character(CIwFVec2 mapPos);
	~Character();
	void Load();
	void Update(int deltaTime);
	void Render();
	void Animation();
	void Status();
	float GetDistanceToCenter();
	float GetDistanceToTarget();
	void CheckTarget(CIwFVec2 &target);

	void SetTarget(CIwFVec2 mapPos);
private:
	CIw2DImage* m_image;
	CIw2DImage* m_imageTarget;
    CIwSVec2 m_Size; // character size
	
};

#endif