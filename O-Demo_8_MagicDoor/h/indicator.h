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
	int mazeIn;
	int mazeOut;
	int mapIn;
	int mapOut;
	void init(){index=-1;door=-1;}
};

class Indicator
{
public:
	~Indicator(){m_Blocks.clear_optimised();m_NPCS.clear_optimised();m_MazeEnter.clear_optimised();}
	CIwArray<int> m_Blocks;
	CIwArray<int> m_MazeEnter;
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