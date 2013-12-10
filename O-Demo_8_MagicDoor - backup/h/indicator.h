#ifndef INDICATOR_H
#define INDICATOR_H
#include "Iw2D.h"
#include <IwArray.h>
#include "cJSON.h"

struct Properties
{
	int index;
	int startPos;
	int door;
	int maze;
	int map;
	void init(){index=-1;door=-1;startPos=-1;maze=-1;map=-1;}
};

class Indicator
{
public:
	~Indicator(){m_Blocks.clear_optimised();m_NPCS.clear_optimised();
			m_Maze.clear_optimised();m_MazeOrder.clear_optimised();
			m_Map.clear_optimised();m_MapOrder.clear_optimised();
			m_DoorPos.clear_optimised();m_DoorOrder.clear_optimised();
			m_DoorIndicator.clear_optimised();m_DoorIndicOrder.clear_optimised();}
	CIwArray<int> m_Blocks;
	CIwArray<int> m_Maze;
	CIwArray<int> m_MazeOrder;
	CIwArray<int> m_Map;
	CIwArray<int> m_MapOrder;
	CIwArray<int> m_NPCS;
	CIwArray<int> m_DoorPos;
	CIwArray<int> m_DoorOrder;
	CIwArray<int> m_DoorIndicator;
	CIwArray<int> m_DoorIndicOrder;
	int _height;
	int _width;
	int _tileHeight;
	int _tileWidth;
	int m_StartPoint;
	void Init(cJSON* tileset,cJSON* layer);
	int m_firstGid;
	int CharCMP(char* a, char* b,int size);
	CIwArray<Properties> m_tileProp;
	int CheckProp(int index,int pos);
	int IsDoor(int index);
	int GetDoorPos(int index);
	CIwSVec2 IndexToPos(int index);
};
#endif