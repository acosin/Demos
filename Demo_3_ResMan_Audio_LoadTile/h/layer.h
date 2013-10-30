#ifndef LAYER_H
#define LAYER_H
#include "Iw2D.h"
#include <IwArray.h>
#include "cJSON.h"

class Layer
{
public:
	CIwArray<int> m_TileIndex;
	bool m_rotatable;
	Layer();
	~Layer();
	void Init(cJSON* layer);
private:
	char* _name;//layer name
	int _x;//start position.x
	int _y;//start position.y
	float _opacity;//layer opacity
	int _width;
	int _height;
	
};

#endif