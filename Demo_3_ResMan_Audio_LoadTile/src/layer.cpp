#include "layer.h"
#include "s3eFile.h"
#include <sstream>
#include <string.h>
using namespace std;
#include <iostream>
#include "IwGx.h"
#include <stdlib.h>
#include "input.h"
#include "s3ePointer.h"
Layer::Layer()
{
	
}

Layer::~Layer()
{
	delete m_Image;
}

void Layer::Init()
{
	m_Tiles=CIwArray<TileUnit>();
	m_Image=Iw2DCreateImageResource("red_tileset");
	CIwSVec2 size=CIwSVec2(m_Image->GetWidth(),m_Image->GetHeight());
	int W=size.x/32;
	int H=size.y/32;
	int total=W*H;
	for(int i=0;i!=total;i++)
	{
		TileUnit tempTileUnit;
		tempTileUnit.Init(i,W);
		m_Tiles.append(tempTileUnit);
	}
	char * jsonContent;
	s3eFile* fileHandler;
	fileHandler=s3eFileOpen("Level_Alpha_3.json", "rb");
	if (fileHandler != NULL)
    {
		//s3eFreeBase((void*)jsonContent);

        // Allocate buffer to be filled with the files contents
        int32 fileSize = s3eFileGetSize(fileHandler);
        jsonContent = (char*)s3eMallocBase(fileSize+1);

        // Read data from file
        if (s3eFileRead(&jsonContent[0], fileSize+1, 1, fileHandler) != 1)
        {
            // An kError has occurred, retrieve information for display
			std::cout<<s3eFileGetErrorString()<<std::endl;
        }
        else
        {
            // Data reading has been successful
            jsonContent[fileSize] = '\0';
        }


    }
    else
    {
        // Something went wrong during opening of the file
        // retrieve error for display
		std::cout<<s3eFileGetErrorString()<<std::endl;
    }
	if (fileHandler)
		s3eFileClose(fileHandler);

	cJSON *root = cJSON_Parse(jsonContent);
	cJSON *layers = cJSON_GetObjectItem(root,"layers");
	cJSON *layer=cJSON_GetArrayItem(layers,0);
	cJSON *data=cJSON_GetObjectItem(layer,"data");

	for(int i=0;i!=10000;i++)
	{
		int index=cJSON_GetArrayItem(data,i)->valueint;
		m_TileIndex.append(index);
		m_TileDir.append(0);
	}
	s3eFileFlush(fileHandler);
	
	//s3eFreeBase((void*)jsonContent);
	//s3eFreeBase((void*)fileHandler);
	delete root,layers,layer,data;
}

void Layer::Render(CIwFVec2 mapPos)
{
	int index=-1;
	if(current_States==S3E_POINTER_STATE_DOWN)
	{
		CIwFVec2 touch=mapPos+GetTouches(S3E_POINTER_STATE_DOWN);
		int index_y=int(touch.y)/32;
		int index_x=int(touch.x)/32;
		index=index_y*100+index_x;
		m_TileDir[index]+=1;
		if(m_TileDir[index]==4)
			m_TileDir[index]=0;
		std::cout<<"x:"<<index_x<<", y:"<<index_y<<", index: "<<index<<std::endl;

	}
	for(int i=0;i!=10000;i++)
	{
		CIwFVec2 offset=CIwFVec2(32*(i%100),32*(i/100));
		
		if(m_TileIndex[i]>0&&m_TileDir[i]!=-1)
		{
			if(m_TileDir[i]!=0)
			{
				iwangle  angle =90*m_TileDir[i];//90 degrees
				CIwSVec2 centre=CIwSVec2(iwsfixed(offset.x+(float)32/2.0f-mapPos.x),iwsfixed(offset.y+(float)32/2.0f-mapPos.y));
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