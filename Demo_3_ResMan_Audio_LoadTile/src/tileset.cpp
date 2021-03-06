#include "tileset.h"


void TileSet::Init(cJSON* tileset)
{
	_firstGid=cJSON_GetObjectItem(tileset,"firstgid")->valueint;
	_filename=cJSON_GetObjectItem(tileset,"image")->valuestring;
	_imageHeight=cJSON_GetObjectItem(tileset,"imageheight")->valueint;
	_imageWidth=cJSON_GetObjectItem(tileset,"imagewidth")->valueint;
	_name=cJSON_GetObjectItem(tileset,"name")->valuestring;
	_tileheight=cJSON_GetObjectItem(tileset,"tileheight")->valueint;
	_tilewidth=cJSON_GetObjectItem(tileset,"tilewidth")->valueint;

	_image=Iw2DCreateImageResource(_name);
	_tilesPerRow=_imageWidth/_tilewidth;
	_tileSize= CIwSVec2(_tilewidth, _tileheight);
}

void TileSet::Render(int index,CIwSVec2 topLeft,int rotation)
{
	int ind=index-_firstGid;
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