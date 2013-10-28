//#include <string.h>
#include <stdlib.h>
#include <iostream>
#include "s3ePointer.h"
#include "s3eFile.h"
#include "IwGx.h"
#include "maze.h"
#include "input.h"
#include "resmgr.h"
using namespace std;

Maze::Maze()
{
	
}
Maze::~Maze()
{
	delete m_Image;
}

void Maze::Init()
{
	m_TileSize=64;
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

void Maze::InitTile(cJSON *root)
{
	cJSON *layers = cJSON_GetObjectItem(root,"layers");

	cJSON *layer=cJSON_GetArrayItem(layers,2);
	cJSON *data=cJSON_GetObjectItem(layer,"data");

	int index;
	for(int i=0;i!=10000;i++)
	{
		index=cJSON_GetArrayItem(data,i)->valueint;
		m_TileIndex.append(index);
		m_TileDir.append(0);
	}
	//s3eFreeBase((void*)jsonContent);
	//s3eFreeBase((void*)fileHandler);
	delete layers,layer,data;
}

void Maze::InitTileSet()
{
	m_Tiles=CIwArray<TileUnit>();
	m_Image=Iw2DCreateImageResource("RotationTiles");
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

void Maze::Render(CIwFVec2 mapPos)
{
	int index=-1;
	if(current_States==S3E_POINTER_STATE_DOWN)
	{
		CIwFVec2 touch=mapPos+GetTouches(S3E_POINTER_STATE_DOWN);
		int index_y=int(touch.y)/m_TileSize;
		int index_x=int(touch.x)/m_TileSize;
		index=index_y*100+index_x;
		m_TileDir[index]+=1;
		if(m_TileDir[index]==4)
			m_TileDir[index]=0;
		std::cout<<"x:"<<index_x<<", y:"<<index_y<<", index: "<<index<<std::endl;

	}
	for(int i=0;i!=10000;i++)
	{
		CIwFVec2 offset=CIwFVec2(m_TileSize*(i%100),m_TileSize*(i/100));
		
		if(m_TileIndex[i]!=0&&m_TileDir[i]!=-1)
		{
			if(m_TileDir[i]!=0)
			{
				iwangle  angle =90*m_TileDir[i];//90 degrees
				CIwSVec2 centre=CIwSVec2(iwsfixed(offset.x+(float)m_TileSize/2.0f-mapPos.x),iwsfixed(offset.y+(float)m_TileSize/2.0f-mapPos.y));
				CIwMat2D rot;
    
				rot.SetRot(IW_ANGLE_FROM_DEGREES(angle), CIwVec2(centre));

				Iw2DSetTransformMatrix(rot);
			}
			//IwGxPrintString((offset-mapPos).x+16, (offset-mapPos).y+16, "100");
			m_Tiles[m_TileIndex[i]-1].Render(m_Image,offset-mapPos);
			
			Iw2DSetTransformMatrix(CIwMat2D::g_Identity);
		}
	}
}
