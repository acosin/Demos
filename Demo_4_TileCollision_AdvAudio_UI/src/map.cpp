#include "map.h"
#include <stdlib.h>
#include <iostream>
#include "s3ePointer.h"
#include "s3eFile.h"

Map::~Map()
{
	delete _layer_base;
	delete _layer_middle;
	delete _layer_maze;
	delete _tileset_map;
	delete _tileset_maze;
}
void Map::ReadJsonFile(char * filename)
{
	cJSON *root;
	char * jsonContent;
	s3eFile* fileHandler;
	fileHandler=s3eFileOpen(filename, "rb");
	if (fileHandler != NULL)
    {
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
        // Something went wrong during opening of the file retrieve error for display
		std::cout<<s3eFileGetErrorString()<<std::endl;
    }
	if (fileHandler)
		s3eFileClose(fileHandler);
	root = cJSON_Parse(jsonContent);
	s3eFileFlush(fileHandler);

	_height=cJSON_GetObjectItem(root,"height")->valueint;
	cJSON *layers = cJSON_GetObjectItem(root,"layers");
	_tileHeight=cJSON_GetObjectItem(root,"tileheight")->valueint;
	_tileWidth=cJSON_GetObjectItem(root,"tilewidth")->valueint;
	_width=cJSON_GetObjectItem(root,"width")->valueint;
	_layer_base->Init(cJSON_GetArrayItem(layers,0));
	_layer_middle->Init(cJSON_GetArrayItem(layers,1));
	_layer_maze->Init(cJSON_GetArrayItem(layers,2));
	cJSON *tilesets = cJSON_GetObjectItem(root,"tilesets");
	_tileset_map->Init(cJSON_GetArrayItem(tilesets,0));
	_tileset_maze->Init(cJSON_GetArrayItem(tilesets,1));

	

	_total=_height*_width;
	_size=CIwSVec2(_width*_tileWidth,_height*_tileHeight);

}
void Map::Load()
{
	screenHeight= IwGxGetScreenHeight();
	screenWidth=IwGxGetScreenWidth();
	_layer_base=new Layer;
	_layer_middle=new Layer;
	_layer_maze=new Layer;
	_tileset_map=new TileSet;
	_tileset_maze=new TileSet;
	ReadJsonFile("Level Alpha 7.5.json");//hard code!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	
	int startPoint_X=22,startPoint_Y=12;
	m_Position=CIwSVec2(startPoint_X*_tileWidth,startPoint_Y*_tileHeight);
	
	for(int i=0;i!=_total;i++)
	{
		m_TileDir.append(0);
	}
}
void Map::Update(int deltaTime)
{
	//DO NOTING CURRENTLY
}

void Map::Render(CIwSVec2 characterBox)
{
	int index_Touched=-1;
	if(current_States==S3E_POINTER_STATE_DOWN)
	{
		CIwFVec2 touch=m_Position+GetTouches(S3E_POINTER_STATE_DOWN);
		int index_y=int(touch.y)/_tileset_map->GetSize().y;
		int index_x=int(touch.x)/_tileset_map->GetSize().x;
		index_Touched=index_y*_width+index_x;
		m_TileDir[index_Touched]+=1;
		if(m_TileDir[index_Touched]==4)
			m_TileDir[index_Touched]=0;
		std::cout<<"x:"<<index_x<<", y:"<<index_y<<", index: "<<index_Touched<<std::endl;

	}
	int index_start=m_Position.x/_tileWidth+(m_Position.y/_tileHeight)*_width;
	if(index_start>=_width)
		index_start=index_start-_width;
	int index_end=(m_Position.x+screenWidth)/_tileWidth+((m_Position.y+screenHeight)/_tileHeight)*_width+1;
	for(int i=index_start;i!=index_end;i++)
	{
		int index_x=i%_width;
		int index_y=i/_width;

		CIwSVec2 topleft = CIwSVec2(int(index_x * _tileWidth-m_Position.x), int(index_y * _tileHeight-m_Position.y));

		_tileset_map->Render(_layer_base->m_TileIndex[i],topleft,_layer_base->m_rotatable? m_TileDir[i]:0);
		_tileset_map->Render(_layer_middle->m_TileIndex[i],topleft,_layer_middle->m_rotatable? m_TileDir[i]:0);
		_tileset_maze->Render(_layer_maze->m_TileIndex[i],topleft,_layer_maze->m_rotatable? m_TileDir[i]:0);
	}

}

bool Map::CheckMapEdge(CIwFVec2 &pos)
{
	if(pos.x<0)
	{
		pos.x=0;
		return false;
	}
	if(pos.y<0)
	{
		pos.y=0;
		return false;
	}
	if(pos.x+Iw2DGetSurfaceWidth()>_size.x)
	{
		pos.x=(float)_size.x-Iw2DGetSurfaceWidth();
		return false;
	}
	if(pos.y+Iw2DGetSurfaceHeight()>_size.y)
	{
		pos.y=(float)_size.y-Iw2DGetSurfaceHeight();
		return false;
	}
	return true;
}

bool Map::CheckMapEdge()
{
	if(m_Position.x<0)
	{
		m_Position.x=0;
		return false;
	}
	if(m_Position.y<0)
	{
		m_Position.y=0;
		return false;
	}
	if(m_Position.x+Iw2DGetSurfaceWidth()>_size.x)
	{
		m_Position.x=(float)_size.x-Iw2DGetSurfaceWidth();
		return false;
	}
	if(m_Position.y+Iw2DGetSurfaceHeight()>_size.y)
	{
		m_Position.y=(float)_size.y-Iw2DGetSurfaceHeight();
		return false;
	}
	return true;
}
