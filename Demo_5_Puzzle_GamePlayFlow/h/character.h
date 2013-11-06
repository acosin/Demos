#ifndef CHARACTER_H
#define CHARACTER_H
#include "Iw2D.h"

class Character 
{
friend class Map;
public:
	CIwFVec2 m_Target; // target for character
	CIwFVec2 m_Position; // position for character in bottom center
	CIwFVec2 m_PositionPrev;// previous postion of character in last frame
	CIwFVec2 m_ScreenCenter;
	CIwFVec2 m_TargetOnScreen; // target for character on screen
	CIwSVec2 m_CollisionBox;
	//float m_MOVERANGE;// within the range, map will not move with character; out of the range, map start to move
	bool m_HitRange;

	Character(){}
	Character(CIwFVec2 mapPos);
	~Character(){delete _image;}
	void Load();
	void Init(int startPoint[]);
	void Update(int deltaTime);
	void Render(CIwFVec2 mapPos);
	void Animation();
	void Status();
	float GetDistanceToCenter();
	float GetDistanceToTarget();
	void CheckTarget(CIwFVec2 &target);
private:
	CIw2DImage* _image;
	CIwSVec2 _Size; // character size
	
};

#endif