#ifndef MAP_H
#define MAP_H
#include "Iw2D.h"
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
	void Load(char * mapFileName);
	void Init();
	void Update(int deltaTime);
	void Render(CIwSVec2 characterBox);
	CIwSVec2 GetMapSize(){return _size;}
	bool CheckMapEdge(CIwFVec2 &delta);
	bool CheckMapEdge();
	void InitTileSet();
	void ReadJsonFile(char * filename);
	void SetCharacterIndex(CIwFVec2 characterPos);
	bool CheckBlock();
	bool CheckDoor();
	bool CheckEndPoint();
	bool CheckCollision(CIwFVec2 characterPos,CIwSVec2 characterBox,CIwFVec2 &target,CIwFVec2 characterPrePos);
	int _StartPos[2];
private:
	int screenHeight;
	int screenWidth;
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
	CIwArray<int> _TileDir;
	CIwArray<TileObstacle> _TileObstacles;
	int _characterPreIndex;
	int _characterIndex;
	int _index_Map_X;
	int	_index_Map_Y;
	CIwArray<int> _EventBlock;
	int _EndPos[2];
};

#endif