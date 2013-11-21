#include "layer.h"

void Layer::Init(cJSON* layer)
{
	cJSON *data=cJSON_GetObjectItem(layer,"data");
	_height=cJSON_GetObjectItem(layer,"height")->valueint;
	_name=cJSON_GetObjectItem(layer,"name")->valuestring;
	_opacity=(float)cJSON_GetObjectItem(layer,"opacity")->valuedouble;
	_width=cJSON_GetObjectItem(layer,"width")->valueint;
	_x=cJSON_GetObjectItem(layer,"x")->valueint;
	_y=cJSON_GetObjectItem(layer,"y")->valueint;

	cJSON *properties=cJSON_GetObjectItem(layer,"properties");
	m_rotatable=false;
	if(properties!=NULL)
	{
		char rotatableStr=cJSON_GetArrayItem(properties,0)->valuestring[0];
		m_rotatable=rotatableStr=='1'? true:false;
	}
	
	int total=_height*_width;
	int index;
	for(int i=0;i!=total;i++)
	{
		index=cJSON_GetArrayItem(data,i)->valueint;
		m_TileIndex.append(index);
	}

}