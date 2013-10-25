#ifndef LAYER_H
#define LAYER_H
#include "Iw2D.h"
#include "tileunit.h"
#include <IwArray.h>

#include "cJSON.h"
class Layer
{
public:
	
	int m_WidthCount;
	int m_HeightCount;
	CIwArray<int> m_TileDir;

	CIwArray<int> m_TileIndex;
	CIwArray<TileUnit> m_Tiles;
	Layer();
	~Layer();
	void Render(CIwFVec2 mapPos);
	void Init();
private:
	CIw2DImage* m_Image;
	
};

#endif