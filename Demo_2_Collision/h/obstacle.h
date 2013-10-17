#ifndef OBSTACLE_H
#define OBSTACLE_H

#include "Iw2D.h"
class Obstacle
{
public:
	CIwFVec2 m_Position;//top left
	CIwSVec2 m_Size;
	bool m_Display;
	Obstacle();
	~Obstacle();
	void Rotate(int degree);//rotate around its center
	void RotateWithOther(int degree,CIwFVec2 rotateCeneterPos);//rotate around other
	bool CollisionDetect(CIwFVec2 characterPos , CIwSVec2 characterBox);
	void Render(CIwFVec2 mapPos,CIwSVec2 characterBox);
private:
	bool _Hit;
};
#endif