//#include <string.h>
#include <stdlib.h>
#include <iostream>
#include "s3ePointer.h"
#include "s3eFile.h"
#include "IwGx.h"
#include "layer.h"
#include "input.h"
#include "resmgr.h"
using namespace std;

Layer::Layer()
{
	
}

Layer::~Layer()
{
	delete m_Image;
}
void Layer::InitTileSet()
{
	m_Tiles=CIwArray<TileUnit>();
	m_Image=Iw2DCreateImageResource("red_tileset");
	CIwSVec2 size=CIwSVec2(m_Image->GetWidth(),m_Image->GetHeight());
	int W=size.x/m_TileSize;
	int H=size.y/m_TileSize;
	int total=W*H;
	for(int i=0;i!=total;i++)
	{
		TileUnit tempTileUnit;
		tempTileUnit.Init(i,W,m_TileSize);
		m_Tiles.append(tempTileUnit);
	}
}
void Layer::InitTile(cJSON *root)
{
	cJSON *layers = cJSON_GetObjectItem(root,"layers");

	cJSON *layer=cJSON_GetArrayItem(layers,0);
	cJSON *data=cJSON_GetObjectItem(layer,"data");

	cJSON *layerMiddle=cJSON_GetArrayItem(layers,1);
	cJSON *dataMiddle=cJSON_GetObjectItem(layerMiddle,"data");
	int index,indexMiddle;
	for(int i=0;i!=10000;i++)
	{
		index=cJSON_GetArrayItem(data,i)->valueint;
		m_TileIndex.append(index);
		indexMiddle=cJSON_GetArrayItem(dataMiddle,i)->valueint;
		m_MiddleIndex.append(indexMiddle);
	}
	//s3eFreeBase((void*)jsonContent);
	//s3eFreeBase((void*)fileHandler);
	delete layers,layer,data,layerMiddle,dataMiddle;
}
void Layer::Init()
{
	m_TileSize=32;
	InitTileSet();
	//char * jsonContent;
	//s3eFile* fileHandler;
	//fileHandler=s3eFileOpen("Level_Alpha_6.json", "rb");
	//if (fileHandler != NULL)
 //   {
 //       // Allocate buffer to be filled with the files contents
 //       int32 fileSize = s3eFileGetSize(fileHandler);
 //       jsonContent = (char*)s3eMallocBase(fileSize+1);

 //       // Read data from file
 //       if (s3eFileRead(&jsonContent[0], fileSize+1, 1, fileHandler) != 1)
 //       {
 //           // An kError has occurred, retrieve information for display
	//		std::cout<<s3eFileGetErrorString()<<std::endl;
 //       }
 //       else
 //       {
 //           // Data reading has been successful
 //           jsonContent[fileSize] = '\0';
 //       }
 //   }
 //   else
 //   {
 //       // Something went wrong during opening of the file
 //       // retrieve error for display
	//	std::cout<<s3eFileGetErrorString()<<std::endl;
 //   }
	//if (fileHandler)
	//	s3eFileClose(fileHandler);
	//cJSON *root = cJSON_Parse(jsonContent);
	//s3eFileFlush(fileHandler);
	InitTile(root);
	
}

void Layer::Render(CIwFVec2 mapPos)
{
	int index=-1;

	for(int i=0;i!=10000;i++)
	{
		CIwFVec2 offset=CIwFVec2(m_TileSize*(i%100),m_TileSize*(i/100));
		
		if(m_TileIndex[i]!=0)
		{
			m_Tiles[m_TileIndex[i]-1].Render(m_Image,offset-mapPos);
		}
		if(m_MiddleIndex[i]!=0)
		{
			m_Tiles[m_MiddleIndex[i]-1].Render(m_Image,offset-mapPos);
		}
	}
}