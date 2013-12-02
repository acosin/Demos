#ifndef LAYER_H
#define LAYER_H
#include "Iw2D.h"
#include <IwArray.h>
#include "cJSON.h"
#include "tileobstacle.h"
class Layer
{
public:
	CIwArray<int> m_TileIndex;
	
	bool m_rotatable;
	Layer(){}
	~Layer(){m_TileIndex.clear_optimised();}
	void Init(cJSON* layer);
	int CharCMP(char* a, char* b,int size);
	CIwArray<int> _indicatorIndex;
	CIwArray<int> _indicatorPos;
private:
	char* _name;//layer name
	int _x;//start position.x
	int _y;//start position.y
	float _opacity;//layer opacity
	int _width;
	int _height;
	int _startPoint;
	
};

#endif