#ifndef TILESET_H
#define TILESET_H
#include "Iw2D.h"
#include "cJSON.h"
#include "s3e.h"
#include "IwGx.h"
#include "obstacle.h"
#include "tileunit.h"
#include <IwArray.h>

class TileSet
{
public:
	CIwArray<int> m_TileUnitsKey;
	CIwArray<TileUnit> m_TileUnits;
	//CIwMap<char*,TileUnit> m_TileUnits;
	TileSet(){m_TileUnitsKey.clear_optimised();m_TileUnits.clear_optimised();}
	~TileSet(){ delete _image;}
	void Init(cJSON* tileset);
	void Render(int index,CIwSVec2 topLeft,int rotation);
	CIwSVec2 GetSize(){return _tileSize;}
	TileUnit* GetTileUnit(int index);
	int m_firstGid;
	int CharCMP(char* a, char* b,int size);
private:
	CIw2DImage* _image;
	TileUnit* _defaultTU;
	char* _filename;
	int _imageHeight;
	int _imageWidth;
	char* _name;
	int _tileheight;
	int _tilewidth;
	int _tilesPerRow;
	CIwSVec2 _tileSize;
};

#endif