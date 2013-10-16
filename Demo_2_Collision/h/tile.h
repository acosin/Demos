#ifndef TILE_H
#define TILE_H
#include <vector>
#include "Iw2D.h"

class Tile
{
public:
	CIwFVec2 m_Position; // position for tile
	int m_Rotation;
	int m_CollisionDirection[4];
	Tile();
	Tile(CIwFVec2 pos,char* file,int rotate);
	~Tile();
	void Load();
	void Render(CIwFVec2 mapPos,bool highlight);
	void Rotate();
	void Update();
	bool CheckCollision(CIwFVec2 characterPos , CIwSVec2 characterBox,CIwFVec2 &target);
	bool CheckCollision(CIwFVec2 collisionPos, CIwSVec2 collisionBox,CIwFVec2 characterPos , CIwSVec2 characterBox);
private:
	CIw2DImage* _image;
	CIw2DImage* _imageH;
	CIwSVec2 _Size; // character size
	char* _filename;
};

#endif