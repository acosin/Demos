#ifndef MAZE_H
#define MAZE_H
#include "Iw2D.h"
#include <IwArray.h>
#include "cJSON.h"
#include "tileunit.h"
class Maze
{
public:
	int m_TileSize;
	int m_WidthCount;
	int m_HeightCount;
	CIwArray<int> m_TileDir;
	CIwArray<int> m_TileIndex;
	CIwArray<TileUnit> m_Tiles;

	Maze();
	~Maze();
	void Init();
	void InitTileSet();
	void InitTile(cJSON *root);
	void Render(CIwFVec2 mapPos);
private:
	CIw2DImage* m_Image;
};
#endif