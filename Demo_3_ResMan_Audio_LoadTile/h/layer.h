#ifndef LAYER_H
#define LAYER_H
#include "Iw2D.h"
#include <IwArray.h>
#include "tileunit.h"
#include "cJSON.h"
class Layer
{
public:
	int m_TileSize;
	int m_WidthCount;
	int m_HeightCount;

	CIwArray<int> m_TileIndex;
	CIwArray<int> m_MiddleIndex;
	CIwArray<TileUnit> m_Tiles;
	Layer();
	~Layer();
	void Render(CIwFVec2 mapPos);
	void Init();
	void InitTileSet();
	void InitTile(cJSON *root);
private:
	CIw2DImage* m_Image;
	
};

#endif