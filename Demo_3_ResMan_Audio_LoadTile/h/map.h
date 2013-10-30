#ifndef MAP_H
#define MAP_H
#include "Iw2D.h"
#include "tiles.h"
#include "layer.h"
#include "tileset.h"
#include "input.h"
#include <IwArray.h>
class Map
{
public:
	CIwFVec2 m_Position; // position for MAP
	CIwFVec2 m_PositionPrev; // previous position for MAP
	Map(){}
	~Map();
	void Load();
	void Update(int deltaTime);
	void Render(CIwSVec2 characterBox);
	CIwSVec2 GetMapSize(){return _size;}
	bool CheckMapEdge(CIwFVec2 &delta);
	bool CheckMapEdge();
	void InitTileSet();
	void ReadJsonFile(char * filename);
private:
    CIwSVec2 _size; // character size
	Layer* _layer_base;
	Layer* _layer_middle;
	Layer* _layer_maze;
	TileSet* _tileset_map;
	TileSet* _tileset_maze;
	int _height;
	int _width;
	int _total;
	int _tileHeight;
	int _tileWidth;
	CIwArray<int> m_TileDir;
};

#endif