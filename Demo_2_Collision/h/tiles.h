#ifndef TILES_H
#define TILES_H
#include "Iw2D.h"
#include "tile.h"

class Tiles
{
public:
	Tile* m_Tiles[12];
	int m_NearByTiles[9];
	CIwFVec2 m_Position; // position for tile
	Tiles();
	~Tiles();
	void Load();
	void Render(CIwFVec2 mapPos);
	void CheckCurrTiles(CIwFVec2 characterPos, CIwSVec2 characterBox);
	bool CheckCollision(CIwFVec2 characterPos, CIwSVec2 characterBox,CIwFVec2 &target);
private:
	int _W;
	int _H;
	int _Total;
};
#endif