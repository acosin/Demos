#ifndef MAP_H
#define MAP_H
#include "Iw2D.h"
#include "layer.h"
#include "tileset.h"
#include "input.h"
#include "path.h"
#include "NPC.h"
#include <IwArray.h>
#include "indicator.h"
class Map
{
public:
	CIwFVec2 m_Position; // position for MAP
	CIwFVec2 m_PositionPrev; // previous position for MAP
	Map(){}
	~Map();
	void Load(int level);
	void Load(char * mapFileName);
	void Init();
	void Init(int pos[2]);
	void Update(int deltaTime);
	void Render(CIwSVec2 characterBox);
	CIwSVec2 GetMapSize(){return _size;}
	bool CheckMapEdge(CIwFVec2 &delta);
	bool CheckMapEdge();
	void InitTileSet();
	void ReadJsonFile(char * filename);
	void SetCharacterIndex(CIwFVec2 characterPos);
	bool CheckBlock();
	int CheckDoor();
	bool CheckEndPoint();
	bool CheckMazePath();
	void CheckBorder(int index);
	bool CheckTileConn(int index_1,int index_2);
	bool CheckCollision(CIwFVec2 characterPos,CIwSVec2 characterBox,CIwFVec2 &target,CIwFVec2 characterPrePos);
	bool CheckMazeTileConn(int index_1,int openDir,int index_2);
	int CheckNPC(int touchIndex);
	int GetCharaIndex(){return _characterIndex;}
	int GetMazeExitIndex(){return mapEndIndex.back();}
	void RenderOpenedDoor();
	int _StartPos[2];
	char* m_filename;
	bool m_tileRotating;
	int _height;
	int _width;
	int m_rotateCount;
	CIwArray<int> m_openedDoor;
	bool m_isLobby;
	Indicator* _indicator;
private:
	CIw2DImage* _doorImg;
	int screenHeight;
	int screenWidth;
    CIwSVec2 _size; // character size
	Layer* _layer_base;
	Layer* _layer_middle;
	Layer* _layer_maze;
	Layer* _layer_npc;

	TileSet* _tileset_map;
	TileSet* _tileset_maze;

	Path* _path;
	
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
	
	bool _border[4];
	
	CIwArray<int> mazeEndIndex;
	CIwArray<int> mapEndIndex;
	CIwArray<int> mazeStartIndex;
	CIwArray<int> mapStartIndex;
	CIwArray<NPC*> _NPCs;
	int mazeFinished;
	bool _blocked;
	CIw2DImage* _BGImage;
	int showDialog;
	int touchedNPC;
	CIwArray<int> _NPCIndex;
	CIwArray<int> _NPCPos;
	CIwArray<int> _DialogIndex;
	CIwArray<char*> _Dialogs;
	
};

#endif