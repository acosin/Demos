#include "indicator.h"
#include "stdio.h"
#include <iostream.h>
int Indicator::CharCMP(char* a, char* b,int size)
{
	int index=0;
	while(index<size)
	{
		if(a[index]!=b[index])
			return 0;
		index++;
	}
	return 1;
}
void Indicator::Init(cJSON* tileset,cJSON* layer)
{
//	//begin reorder indicator index
//	int len=_layer_indi->_indicatorIndex.size();
//	CIwArray<int> m_OrderIndex;
//	
//	for(int i=0;i!=len;i++)
//	{
//		m_OrderIndex.append(0);
//		_layer_indi->_indicatorIndex[i]-=_tileset_indi->m_firstGid;
//	}
//	for(int i=0;i!=len;i++)
//	{
//		m_OrderIndex[_layer_indi->_indicatorIndex[i]]=i;
//	}
//	CIwArray<int> m_indiIndex;
//	CIwArray<int> m_indiPos;
//	for(int i=0;i!=len;i++)
//	{
//		m_indiIndex.append(_layer_indi->_indicatorIndex[m_OrderIndex[i]]);
//		m_indiPos.append(_layer_indi->_indicatorPos[m_OrderIndex[i]]);
//	}
//	_layer_indi->_indicatorIndex.swap(m_indiIndex);
//	_layer_indi->_indicatorPos.swap(m_indiPos);
////end reorder indicator index

	m_firstGid=cJSON_GetObjectItem(tileset,"firstgid")->valueint;
	cJSON * properties=cJSON_GetObjectItem(tileset,"tileproperties");
	_tileHeight=cJSON_GetObjectItem(tileset,"tileheight")->valueint;
	_tileWidth=cJSON_GetObjectItem(tileset,"tilewidth")->valueint;
	if(properties!=NULL)
	{
		int propSize=0;
		if(properties->child)
			propSize=cJSON_GetArraySize(properties);
		for(int i=0;i!=propSize;i++)
		{
			cJSON *tile=cJSON_GetArrayItem(properties,i);
		
			int index=atoi(tile->string);
			Properties s;
			s.init();
			s.index=index;
			int properSize=cJSON_GetArraySize(tile);
			for(int j=0;j!=properSize;j++)
			{
				cJSON * proper=cJSON_GetArrayItem(tile,j);

				if(CharCMP(proper->string, "Door",sizeof("Door")))
				{
					s.door=atoi(proper->valuestring);
					std::cout<<index<<":"<<s.door<<std::endl;
				}
				else if(CharCMP(proper->string, "Start",sizeof("Start")))
				{
					s.startPos=atoi(proper->valuestring);
					std::cout<<index<<":"<<s.door<<std::endl;
				}
			}
			m_tileProp.append(s);
		}
	}

	cJSON *data=cJSON_GetObjectItem(layer,"data");
	_height=cJSON_GetObjectItem(layer,"height")->valueint;
	_width=cJSON_GetObjectItem(layer,"width")->valueint;

	int total=_height*_width;
	int index;
	for(int i=0;i!=total;i++)
	{
		index=cJSON_GetArrayItem(data,i)->valueint-m_firstGid;
		if(index>=0)
			CheckProp(index,i);
		//m_TileIndex.append(index);
		//if(isindicator&&index!=0)
		//{
		//	//add mazeexit & mazeentrance
		//	_indicatorIndex.append(index);
		//	_indicatorPos.append(i);
		//}
	}
}

int Indicator::CheckProp(int index,int pos)
{
	int res=-1;
	for(int i=0;i!=m_tileProp.size();i++)
	{
		if(m_tileProp[i].index==index)
		{
			res=1;
			m_DoorPos.append(pos);
			m_DoorOrder.append(m_tileProp[i].door);
			m_DoorPos.append(pos+1);
			m_DoorOrder.append(m_tileProp[i].door);
			m_DoorIndicator.append(pos-87);//hard code!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
			m_DoorIndicOrder.append(m_tileProp[i].door);
			std::cout<<m_tileProp[i].door<<":"<<pos<<std::endl;
		}
	}
	return res;
}
int Indicator::IsDoor(int index)
{
	int i=m_DoorPos.find(index);
	if(i>=0)
	{
		return m_DoorOrder[i];
	}
	return -1;
}

int Indicator::GetDoorPos(int doorIndex)
{
	int i=m_DoorIndicOrder.find(doorIndex);
	if(i>=0)
	{
		return m_DoorIndicator[i];
	}
	return -1;
}

CIwSVec2 Indicator::IndexToPos(int index)
{
	if(index>=0)
	{
		int y=index/_width;
		int x=index%_width;
		return CIwSVec2(x*_tileWidth,y*_tileHeight);
	}
	else
		return CIwSVec2(0,0);
}
