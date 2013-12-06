#ifndef CHARACTER_H
#define CHARACTER_H
#include "anima.h"

enum CharaState
{
	idle=0,
	right=1,
	left=2,
	up=3,
	down=4
};

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
	~Character(){}
	void Load();
	void Init(int startPoint[]);
	void Update(int deltaTime);
	void Render(CIwFVec2 mapPos);
	void Animation();
	void Status();
	float GetDistanceToCenter();
	float GetDistanceToTarget();
	void CheckTarget(CIwFVec2 &target);
	CharaState _CS;
private:
	Anima* _anima_right;
	Anima* _anima_idle;
	Anima* _anima_left;
};

#endif