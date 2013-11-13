#include "tileset.h"
#include <iostream.h>
int TileSet::CharCMP(char* a, char* b,int size)
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
void TileSet::Init(cJSON* tileset)
{
	_defaultTU=new TileUnit;
	bool b[4]={false,false,false,false};//non-blocking border
	_defaultTU->Init(b,false,false,false);
	m_firstGid=cJSON_GetObjectItem(tileset,"firstgid")->valueint;
	_filename=cJSON_GetObjectItem(tileset,"image")->valuestring;
	_imageHeight=cJSON_GetObjectItem(tileset,"imageheight")->valueint;
	_imageWidth=cJSON_GetObjectItem(tileset,"imagewidth")->valueint;
	_name=cJSON_GetObjectItem(tileset,"name")->valuestring;
	_tileheight=cJSON_GetObjectItem(tileset,"tileheight")->valueint;
	_tilewidth=cJSON_GetObjectItem(tileset,"tilewidth")->valueint;

	_image=Iw2DCreateImageResource(_name);
	_tilesPerRow=_imageWidth/_tilewidth;
	_tileSize= CIwSVec2(_tilewidth, _tileheight);
	cJSON * properties=cJSON_GetObjectItem(tileset,"tileproperties");
	int propSize=0;
	if(properties->child)
		propSize=cJSON_GetArraySize(properties);
	for(int i=0;i!=propSize;i++)
	{
		cJSON *tile=cJSON_GetArrayItem(properties,i);
		
		int index=atoi(tile->string);
		bool b[4]={false,false,false,false};//non-blocking border
		bool isDoor=false;
		bool isEndPoint=false;
		bool isNPC=false;
		int properSize=cJSON_GetArraySize(tile);
		for(int j=0;j!=properSize;j++)
		{
			cJSON * proper=cJSON_GetArrayItem(tile,j);
			
			if(CharCMP(proper->string, "Border",sizeof("Border")))
			{
				char* border=cJSON_GetArrayItem(tile,0)->valuestring;
				
				for(int i=0;i!=4;i++)
					if(border[i*2]=='0')
						b[i]=true;//blocking border
			}
			else if(CharCMP(proper->string, "Door",sizeof("Door")))
			{
				isDoor=true;
			}
			else if(CharCMP(proper->string, "EndPoint",sizeof("EndPoint")))
			{
				isEndPoint=true;
			}
			else if(CharCMP(proper->string, "NPC",sizeof("NPC")))
			{
				isNPC=true;
			}
		}
		
		TileUnit tu;
		tu.Init(b,isDoor,isEndPoint,isNPC);
		m_TileUnitsKey.append(index);
		m_TileUnits.append(tu);
	}
}

void TileSet::Render(int index,CIwSVec2 topLeft,int rotation)
{
	int ind=index-m_firstGid;
	if(ind<0)
		return;
	int index_X=ind%_tilesPerRow;
	int index_Y=ind/_tilesPerRow;
	CIwSVec2 pos = CIwSVec2(index_X * _tilewidth,index_Y * _tileheight);
	if(rotation!=0)
	{
		iwangle  angle =90*rotation;//90 degrees
		CIwSVec2 centre=CIwSVec2(iwsfixed(topLeft.x+(float)_tilewidth/2.0f),iwsfixed(topLeft.y+(float)_tileheight/2.0f));
		CIwMat2D rot;
    
		rot.SetRot(IW_ANGLE_FROM_DEGREES(angle), CIwVec2(centre));

		Iw2DSetTransformMatrix(rot);
	}
	Iw2DDrawImageRegion(_image, topLeft, pos, _tileSize);
	Iw2DSetTransformMatrix(CIwMat2D::g_Identity);
}

TileUnit* TileSet::GetTileUnit(int index)
{
	int ind_search=m_TileUnitsKey.find(index);
	if(ind_search<0)
	{
		//std:cout<<"no border info found for "<<_name<<"["<<index<<"]"<<std::endl;
		return _defaultTU;//all border are non-blocking
	}
	return &m_TileUnits[ind_search];
}
