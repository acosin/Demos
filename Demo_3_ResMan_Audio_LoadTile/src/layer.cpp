#include "layer.h"

Layer::Layer(){}

Layer::~Layer(){}

void Layer::Init(cJSON* layer)
{
	cJSON *data=cJSON_GetObjectItem(layer,"data");
	_height=cJSON_GetObjectItem(layer,"height")->valueint;
	_name=cJSON_GetObjectItem(layer,"name")->valuestring;
	_opacity=(float)cJSON_GetObjectItem(layer,"opacity")->valuedouble;
	_width=cJSON_GetObjectItem(layer,"width")->valueint;
	_x=cJSON_GetObjectItem(layer,"x")->valueint;
	_y=cJSON_GetObjectItem(layer,"y")->valueint;
	int total=_height*_width;
	int index;
	for(int i=0;i!=total;i++)//
	{
		index=cJSON_GetArrayItem(data,i)->valueint;
		m_TileIndex.append(index);
	}
}