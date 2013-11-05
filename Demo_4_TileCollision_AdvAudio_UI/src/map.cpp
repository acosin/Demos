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
		_TileDir.append(0);
	}
	for(int i=0;i!=9;i++)
	{
		TileObstacle tileObs=TileObstacle();
		tileObs.InitialObstacle(CIwFVec2(0,0),CIwSVec2(_tileWidth,_tileHeight));
		_TileObstacles.append(tileObs);
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
		_TileDir[index_Touched]+=1;
		if(_TileDir[index_Touched]==4)
			_TileDir[index_Touched]=0;
		std::cout<<"x:"<<index_x<<", y:"<<index_y<<", index: "<<index_Touched<<std::endl;

	}
	int index_start=(int)m_Position.x/_tileWidth+((int)m_Position.y/_tileHeight)*_width;
	if(index_start>=_width)
		index_start=index_start-_width;
	int index_end=((int)m_Position.x+screenWidth)/_tileWidth+(((int)m_Position.y+screenHeight)/_tileHeight)*_width+1;
	for(int i=index_start;i!=index_end;i++)
	{
		int index_x=i%_width;
		int index_y=i/_width;

		CIwSVec2 topleft = CIwSVec2(int(index_x * _tileWidth-m_Position.x), int(index_y * _tileHeight-m_Position.y));

		_tileset_map->Render(_layer_base->m_TileIndex[i],topleft,_layer_base->m_rotatable? _TileDir[i]:0);
		_tileset_map->Render(_layer_middle->m_TileIndex[i],topleft,_layer_middle->m_rotatable? _TileDir[i]:0);
		_tileset_maze->Render(_layer_maze->m_TileIndex[i],topleft,_layer_maze->m_rotatable? _TileDir[i]:0);
	}
	for(int i=0;i!=9;i++)
	{
		_TileObstacles[i].Render(m_Position,false,characterBox,i);
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

//return true means has collide with obstacles
bool Map::CheckCollision(CIwFVec2 characterPos,CIwSVec2 characterBox,CIwFVec2 &target,CIwFVec2 characterPrePos)
{
	//get border info for each _TileObstacles by checking certain tile's border info stored in tileset for each layer
	//-1- get current character standing on tile index from the map
	
	int index_Map_X=((int)characterPos.x)/_tileWidth;
	int index_Map_Y=((int)characterPos.y)/_tileHeight;
	int characterCurrIndex=index_Map_X+index_Map_Y*_width;
	
	//check if character has moved to another tile since last frame, if not then don't update the rest
	if(_characterPreIndex!=characterCurrIndex)
	{	
		int index_Map[9];
		//-2- get nearby 9 tiles index      0,1,2
		//									3,4,5
		//									6,7,8
		index_Map[0]=characterCurrIndex-_width-1;
		index_Map[1]=characterCurrIndex-_width;
		index_Map[2]=characterCurrIndex-_width+1;
		index_Map[3]=characterCurrIndex-1;
		index_Map[4]=characterCurrIndex;
		index_Map[5]=characterCurrIndex+1;
		index_Map[6]=characterCurrIndex+_width-1;
		index_Map[7]=characterCurrIndex+_width;
		index_Map[8]=characterCurrIndex+_width+1;

		//-3- get position for each nearby tiles
		CIwFVec2 pos_Map[9];
		pos_Map[4]=CIwFVec2(index_Map_X*_tileWidth,index_Map_Y*_tileHeight);
		pos_Map[0]=CIwFVec2((index_Map_X-1)*_tileWidth,(index_Map_Y-1)*_tileHeight);
		pos_Map[1]=CIwFVec2(index_Map_X*_tileWidth,(index_Map_Y-1)*_tileHeight);
		pos_Map[2]=CIwFVec2((index_Map_X+1)*_tileWidth,(index_Map_Y-1)*_tileHeight);
		pos_Map[3]=CIwFVec2((index_Map_X-1)*_tileWidth,index_Map_Y*_tileHeight);
		pos_Map[5]=CIwFVec2((index_Map_X+1)*_tileWidth,index_Map_Y*_tileHeight);
		pos_Map[6]=CIwFVec2((index_Map_X-1)*_tileWidth,(index_Map_Y+1)*_tileHeight);
		pos_Map[7]=CIwFVec2(index_Map_X*_tileWidth,(index_Map_Y+1)*_tileHeight);
		pos_Map[8]=CIwFVec2((index_Map_X+1)*_tileWidth,(index_Map_Y+1)*_tileHeight);

		int index_Layer_Base,index_Layer_Middle,index_Layer_Maze;
	
		for(int i=0;i!=9;i++)
		{
			//-4- get layer index
			index_Layer_Base=-1;
			index_Layer_Middle=-1;
			index_Layer_Maze=-1;
			//make sure tile index is valid
			bool border[4]={false,false,false,false};
			if(index_Map[i]>=0&&index_Map[i]<=_total)	
			{
				//index_Map[i]=-1;
				index_Layer_Base=_layer_base->m_TileIndex[index_Map[i]]-_tileset_map->m_firstGid;
				index_Layer_Middle=_layer_middle->m_TileIndex[index_Map[i]]-_tileset_map->m_firstGid;
				index_Layer_Maze=_layer_maze->m_TileIndex[index_Map[i]]-_tileset_maze->m_firstGid;
				//-5- get border info for each tile
				bool border_base[4]={false,false,false,false};
				bool border_middle[4]={false,false,false,false};
				bool border_maze[4]={false,false,false,false};
				if(index_Layer_Base>=0)
				{
					TileUnit* ind = _tileset_map->GetTileUnit(index_Layer_Base);
					memcpy(border_base,ind->m_border,sizeof(border_base));
					//border_base[4] = {ind->m_border[0],ind->m_border[0],ind->m_border[0],ind->m_border[0]};
					//border_base[1] = ind->m_border[1];
					//border_base[2] = ind->m_border[2];
					//border_base[3] = ind->m_border[3];
					//*border_base = _tileset_map->GetTileUnit(index_Layer_Base).m_border;
				}
				if(index_Layer_Middle>=0)
				{
					TileUnit* ind =_tileset_map->GetTileUnit(index_Layer_Middle);
					memcpy(border_middle,ind->m_border,sizeof(border_middle));
					//border_middle=ind->m_border;
					//border_middle[1]=ind->m_border[1];
					//border_middle[2]=ind->m_border[2];
					//border_middle[3]=ind->m_border[3];
				}
				if(index_Layer_Maze>=0)
				{
					TileUnit* ind=_tileset_maze->GetTileUnit(index_Layer_Maze);
					ind->Rotate(_layer_maze->m_rotatable? _TileDir[index_Map[i]]:0);
					memcpy(border_maze,ind->m_borderRot,sizeof(border_maze));
					//border_maze=ind->Rotate(_layer_maze->m_rotatable? _TileDir[index_Map[i]]:0);
					//*border_maze=_tileset_maze->GetTileUnit(index_Layer_Maze)->Rotate(_layer_maze->m_rotatable? _TileDir[index_Map[i]]:0);
				}
				//std::cout<<"Tile index["<<index_Map[i]<<"]"<<std::endl;
				//std::cout<<"border_base["<<i<<"]: index["<<index_Layer_Base<<"]:"<<border_base[0]<<","<<border_base[1]<<","<<border_base[2]<<","<<border_base[3]<<std::endl;
				//std::cout<<"border_middle["<<i<<"]: index["<<index_Layer_Middle<<"]:"<<border_middle[0]<<","<<border_middle[1]<<","<<border_middle[2]<<","<<border_middle[3]<<std::endl;
				//std::cout<<"border_maze["<<i<<"]: index["<<index_Layer_Maze<<"]:"<<border_maze[0]<<","<<border_maze[1]<<","<<border_maze[2]<<","<<border_maze[3]<<std::endl;
				for(int j=0;j!=4;j++)
					border[j]=border_base[j]|border_middle[j]|border_maze[j];
				//std::cout<<"border["<<i<<"]: "<<border[0]<<","<<border[1]<<","<<border[2]<<","<<border[3]<<std::endl;
			}
			//std::cout<<"index_Layer_Maze: "<<index_Layer_Maze<<std::endl;

			//std::cout<<"border: "<<border_maze[0]<<","<<border_maze[1]<<","<<border_maze[2]<<","<<border_maze[3]<<std::endl;
			//-6- update border info of obstacles
			_TileObstacles[i].UpdateObstacle(border,pos_Map[i]);
			if(_TileObstacles[i].CheckCollision(characterPos,characterBox,target,characterPrePos))
				return true;
		}
	}
	else
	{
		for(int i=0;i!=9;i++)
		{
			if(_TileObstacles[i].CheckCollision(characterPos,characterBox,target,characterPrePos))
				return true;
		}
	}
	return false;
}