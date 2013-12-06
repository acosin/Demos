#ifndef INDICATOR_H
#define INDICATOR_H
#include "Iw2D.h"
#include <IwArray.h>
#include "cJSON.h"
#include "tileobstacle.h"
class Indicator
{
public:
	~Indicator(){m_Doors.clear_optimised();m_Blocks.clear_optimised();m_NPCS.clear_optimised();m_MazeEnter.clear_optimised();}
	CIwArray<int> m_Doors;
	CIwArray<int> m_Blocks;
	CIwArray<int> m_MazeEnter;
	CIwArray<int> m_NPCS;
	int m_StartPoint;
	
};
#endif