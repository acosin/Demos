#ifndef TILESET_H
#define TILESET_H
#include "Iw2D.h"
#include "cJSON.h"
#include "s3e.h"
#include "IwGx.h"

class TileSet
{
public:
	
	TileSet(){}
	~TileSet(){ delete _image;}
	void Init(cJSON* tileset);
	void Render(int index,CIwSVec2 topLeft,int rotation);
	CIwSVec2 GetSize(){return _tileSize;}
private:
	CIw2DImage* _image;
	int _firstGid;
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