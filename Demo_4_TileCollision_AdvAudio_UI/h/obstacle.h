#ifndef OBSTACLE_H
#define OBSTACLE_H

#include "Iw2D.h"
class Obstacle
{
public:
	CIwFVec2 m_Position;//top left
	CIwSVec2 m_Size;
	bool m_Block;//true means blocked
	bool m_Display;
	Obstacle();
	~Obstacle(){};
	
	bool CollisionDetect(CIwFVec2 characterPos , CIwSVec2 characterBox);
	int CollisionSide(CIwFVec2 characterPos , CIwSVec2 characterBox, CIwFVec2 &target);
	void Render(CIwFVec2 mapPos,CIwSVec2 characterBox);
private:
	bool _Hit;
};
#endif