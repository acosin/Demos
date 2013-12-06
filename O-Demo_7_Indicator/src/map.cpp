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
	delete _layer_indi;
	delete _layer_npc;
	delete _tileset_map;
	delete _tileset_maze;
	delete _tileset_indi;
	delete _path;
	_NPCs.clear_optimised();
	delete _BGImage;
	m_doors.clear_optimised();
	_TileDir.clear_optimised();
	_TileObstacles.clear_optimised();
	mazeEndIndex.clear_optimised();
	mapEndIndex.clear_optimised();
	mazeStartIndex.clear_optimised();
	mapStartIndex.clear_optimised();
}

int CharCMP(char* a, char* b,int size)
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

void Map::Load(int level)
{
	switch(level)
	{
	case 0:
		Load("Alpha 8 - Lobby.json");
		break;
	case 1:
		Load("Alpha 8 - Level1.json");
		break;
	case 2:
		Load("Alpha 8 - Level2.json");
		break;
	case 3:
		Load("Alpha 8 - Level3.json");
		break;
	case 4:
		Load("Alpha 8 - Level4.json");
		break;
	case 5:
		Load("Alpha 8 - Level5.json");
		break;
	case 6:
		Load("Alpha 8 - Level6.json");
		break;
	case 7:
		Load("Alpha 8 - Level7.json");
		break;
	case 8:
		Load("Alpha 8 - Level8.json");
		break;
	case 9:
		Load("Alpha 8 - Level9.json");
		break;
	case 10:
		Load("Alpha 8 - Level10.json");
		break;
	default:
		Load("Alpha 8 - Lobby - Copy.json");
		break;
	}
}
void Map::Load(char * mapFileName)
{
	int temp[2]={0,0};
	memcpy(_StartPos,temp,sizeof(temp));
	memcpy(_EndPos,temp,sizeof(temp));
	showDialog=-1;
	screenHeight= IwGxGetScreenHeight();
	screenWidth=IwGxGetScreenWidth();
	_layer_base=new Layer;
	_layer_middle=new Layer;
	_layer_maze=new Layer;
	_layer_npc=new Layer;
	_layer_indi=new Layer;
	_tileset_map=new TileSet;
	_tileset_maze=new TileSet;
	_tileset_indi=new TileSet;
	_path=new Path;
	ReadJsonFile(mapFileName);
	_characterPreIndex=0;
	for(int i=0;i!=_NPCIndex.size();i++)
	{
		NPC* _npc=new NPC;
		
		for(int j=0;j!=_Dialogs.size();j++)
		{
			if(_NPCIndex[i]==_DialogIndex[j])
				_npc->m_Dialogs.append(_Dialogs[j]);
		}

		//switch(_NPCIndex[i])
		//{
		//case 2:
		//	_npc->m_Dialogs.append("We have been waiting for someone to help for a while now.");

		//	//_npc->Init(_NPCPos[_DialogIndex.find(2)]);
		//	break;
		//case 3:
		//	_npc->m_Dialogs.append("Will it be you?");
		//	//_npc->Init(_NPCPos[2]);
		//	break;
		//case 6:
		//	_npc->m_Dialogs.append("Do you think you can help us? It would not take up too much of your time.");
		//	//_npc->Init(_NPCPos[1]);
		//	break;
		//}
		_npc->Init(_NPCPos[i]);
		std::cout<<"DialogIndex:"<<_npc->m_Dialogs[0]<<" pos:"<<_npc->m_Index<<std::endl;
		_NPCs.append(_npc);
	}
	/*for(int i=0;i!=_total;i++)
	{
		int tile=_layer_npc->m_TileIndex[i]-_tileset_map->m_firstGid;
		if(tile>=0)
		{
			TileUnit* t=_tileset_map->GetTileUnit(tile);
			if(t->m_isNPC)
			{
				NPC* _npc=new NPC;
				switch(t->m_NPCIndex)
				{
				case 2:
					_npc->m_Dialogs.append(_Dialogs[_DialogIndex.find(2)]);
					break;
				case 6:
					_npc->m_Dialogs.append(_Dialogs[_DialogIndex.find(6)]);
					break;
				case 3:
					_npc->m_Dialogs.append(_Dialogs[_DialogIndex.find(3)]);
					break;
				}
				_npc->Init(i);
				_NPCs.append(_npc);
			}
		}
	}*/
	for(int i=0;i!=9;i++)
	{
		TileObstacle tileObs=TileObstacle();
		tileObs.InitialObstacle(CIwFVec2(0,0),CIwSVec2(_tileWidth,_tileHeight));
		_TileObstacles.append(tileObs);
	}
	//_EventBlock.append(4322);
}

void Map::Init()
{
	m_rotateCount=0;
	touchedNPC=-1;
	_blocked=false;
	_path=new Path;
	mazeFinished=0;
	m_Position=CIwFVec2(_StartPos[0]*_tileWidth-Iw2DGetSurfaceWidth()/2.0f,_StartPos[1]*_tileHeight-Iw2DGetSurfaceHeight()/2.0f);
	m_tileRotating=false;
	_TileDir.clear_optimised();
	
	for(int i=0;i!=_total;i++)
	{
		_TileDir.append(0);
	}
}
void Map::Init(int pos[2])
{
	m_rotateCount=0;
	touchedNPC=-1;
	_blocked=false;
	_path=new Path;
	mazeFinished=0;
	m_Position=CIwFVec2(pos[0]*_tileWidth-Iw2DGetSurfaceWidth()/2.0f,pos[1]*_tileHeight-Iw2DGetSurfaceHeight()/2.0f);
	m_tileRotating=false;
	_TileDir.clear_optimised();
	
	for(int i=0;i!=_total;i++)
	{
		_TileDir.append(0);
	}
}

void Map::ReadJsonFile(char * filename)
{
	m_filename=filename;
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
	if(cJSON_GetArraySize(layers)>3)
	{
		cJSON *layer_3=cJSON_GetArrayItem(layers,3);
		char* name=cJSON_GetObjectItem(layer_3,"name")->valuestring;
		if(CharCMP(name,"NPC",sizeof("NPC")))
			_layer_npc->Init(layer_3);
		else if(CharCMP(name,"indicator",sizeof("indicator")))
			_layer_indi->Init(layer_3);
		if(cJSON_GetArraySize(layers)>4)
		{
			cJSON *layer_4=cJSON_GetArrayItem(layers,4);
			char* name=cJSON_GetObjectItem(layer_4,"name")->valuestring;
			if(CharCMP(name,"NPC",sizeof("NPC")))
				_layer_npc->Init(layer_4);
			else if(CharCMP(name,"indicator",sizeof("indicator")))
				_layer_indi->Init(layer_4);
		}
	}
	
	cJSON *tilesets = cJSON_GetObjectItem(root,"tilesets");
	_tileset_map->Init(cJSON_GetArrayItem(tilesets,0));
	_tileset_maze->Init(cJSON_GetArrayItem(tilesets,1));
	if(cJSON_GetArraySize(tilesets)>2)
		_tileset_indi->Init(cJSON_GetArrayItem(tilesets,2));

//begin reorder indicator index
	int len=_layer_indi->_indicatorIndex.size();
	CIwArray<int> m_OrderIndex;
	
	for(int i=0;i!=len;i++)
	{
		m_OrderIndex.append(0);
		_layer_indi->_indicatorIndex[i]-=_tileset_indi->m_firstGid;
	}
	for(int i=0;i!=len;i++)
	{
		m_OrderIndex[_layer_indi->_indicatorIndex[i]]=i;
	}
	CIwArray<int> m_indiIndex;
	CIwArray<int> m_indiPos;
	for(int i=0;i!=len;i++)
	{
		m_indiIndex.append(_layer_indi->_indicatorIndex[m_OrderIndex[i]]);
		m_indiPos.append(_layer_indi->_indicatorPos[m_OrderIndex[i]]);
	}
	_layer_indi->_indicatorIndex.swap(m_indiIndex);
	_layer_indi->_indicatorPos.swap(m_indiPos);
//end reorder indicator index

	cJSON * properties=cJSON_GetObjectItem(root,"properties");
	int propSize=cJSON_GetArraySize(properties);
	for(int i=propSize-1;i!=-1;i--)
	{
		cJSON * prop=cJSON_GetArrayItem(properties,i);
		char* propString=prop->valuestring;

		char* name=prop->string;

		char* chars_array = strtok(propString, ",");
		if(CharCMP(name,"Block",sizeof("Block")))
		{
			while(chars_array)
			{
				_EventBlock.append(atoi(chars_array));
				chars_array = strtok(NULL, ",");
			}
		}
		else if(CharCMP(name,"BG",sizeof("BG")))
		{
			_BGImage=Iw2DCreateImageResource(propString);
		}
		else if(CharCMP(name,"NPC",sizeof("NPC")))
		{
			while(chars_array)
			{
				_NPCIndex.append(atoi(chars_array));
				chars_array = strtok(NULL, ",");
			}
		}
		else if(CharCMP(name,"0",sizeof("0")))
		{
			_Dialogs.append(propString);
			_DialogIndex.append(0);
		}
		else if(CharCMP(name,"1",sizeof("1")))
		{
			_Dialogs.append(propString);
			_DialogIndex.append(1);
		}
		else if(CharCMP(name,"2",sizeof("2")))
		{
			_Dialogs.append(propString);
			_DialogIndex.append(2);
		}
		else if(CharCMP(name,"3",sizeof("3")))
		{
			_Dialogs.append(propString);
			_DialogIndex.append(3);
		}
		else if(CharCMP(name,"4",sizeof("4")))
		{
			_Dialogs.append(propString);
			_DialogIndex.append(4);
		}
		else if(CharCMP(name,"5",sizeof("5")))
		{
			_Dialogs.append(propString);
			_DialogIndex.append(5);
		}
		else if(CharCMP(name,"6",sizeof("6")))
		{
			_Dialogs.append(propString);
			_DialogIndex.append(6);
		}
		else if(CharCMP(name,"7",sizeof("7")))
		{
			_Dialogs.append(propString);
			_DialogIndex.append(7);
		}
		else if(CharCMP(name,"NPCPos",sizeof("NPCPos")))
		{
			while(chars_array)
			{
				_NPCPos.append(atoi(chars_array));
				chars_array = strtok(NULL, ",");
			}
		}
		else if(CharCMP(name,"Door",sizeof("Door")))
		{
			while(chars_array)
			{
				m_doors.append(atoi(chars_array));
				chars_array = strtok(NULL, ",");
			}
		}
		else if(CharCMP(name,"EndPoint",sizeof("EndPoint")))
		{
			_EndPos[0]=atoi(chars_array);
			chars_array = strtok(NULL, ",");
			_EndPos[1]=atoi(chars_array);
		}
		else if(CharCMP(name,"StartPoint",sizeof("StartPoint")))
		{
			_StartPos[0]=atoi(chars_array);
			chars_array = strtok(NULL, ",");
			_StartPos[1]=atoi(chars_array);
		}
		else if(CharCMP(name,"emaze",sizeof("emaze")))
		{
			while(chars_array)
			{
				mapEndIndex.append(atoi(chars_array));
				chars_array = strtok(NULL, ",");
			}
		}
		else if(CharCMP(name,"etmaze",sizeof("etmaze")))
		{
			while(chars_array)
			{
				mazeEndIndex.append(atoi(chars_array));
				chars_array = strtok(NULL, ",");
			}
		}
		else if(CharCMP(name,"smaze",sizeof("smaze")))
		{
			while(chars_array)
			{
				mapStartIndex.append(atoi(chars_array));
				chars_array = strtok(NULL, ",");
			}
		}
		else if(CharCMP(name,"stmaze",sizeof("stmaze")))
		{
			while(chars_array)
			{
				mazeStartIndex.append(atoi(chars_array));
				chars_array = strtok(NULL, ",");
			}
		}
	}

	_total=_height*_width;
	_size=CIwSVec2(_width*_tileWidth,_height*_tileHeight);

}

void Map::Update(int deltaTime)
{
	//DO NOTING CURRENTLY
}

int Map::CheckNPC(int touchIndex)
{
	for(int i=_NPCs.size()-1;i!=-1;i--)
	{
		if(_NPCs[i]->m_Index==touchIndex)
			return i;
	}
	return -1;
}

void Map::SetCharacterIndex(CIwFVec2 characterPos)
{
	
	_index_Map_X=((int)characterPos.x)/_tileWidth;
	_index_Map_Y=((int)characterPos.y)/_tileHeight;
	int temp=_index_Map_X+_index_Map_Y*_width;
	if(_characterIndex>=0&&_characterIndex!=temp)
		_characterPreIndex=_characterIndex;
	_characterIndex=temp;
	
}

bool Map::CheckBlock()
{
	_blocked= false;
	if(_EventBlock.empty())
		_blocked= false;
	else if(mazeFinished<_EventBlock.size()&&_EventBlock[mazeFinished]==_characterIndex&&(_layer_maze->m_TileIndex[_characterPreIndex]-_tileset_maze->m_firstGid)<0)
		_blocked=true;
	return _blocked;
}

int Map::CheckDoor()
{
	
	int index_base=_layer_base->m_TileIndex[_characterIndex]-_tileset_map->m_firstGid;
	bool isDoor_base=_tileset_map->GetTileUnit(index_base)->m_isDoor;

	int index_middle=_layer_middle->m_TileIndex[_characterIndex]-_tileset_map->m_firstGid;
	bool isDoor_middle=_tileset_map->GetTileUnit(index_middle)->m_isDoor;


	//int index_middle=_layer_middle->m_TileIndex[_characterIndex]-_tileset_map->m_firstGid;
	//bool isDoor_middle=_tileset_map->GetTileUnit(index_middle)->m_isDoor;

	if(isDoor_base||isDoor_middle)
	{
		return m_doors.find(_characterIndex);
	}
	return -1;
}

bool Map::CheckEndPoint()
{
	int endPoint_Index=_EndPos[0]+_EndPos[1]*_width;
	if(endPoint_Index==_characterIndex)
		return true;

	return false;
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

bool Map::CheckTileConn(int index_1,int index_2)
{
	CheckBorder(index_1);
	//true means cannot pass
	if(!_border[0]&&index_1-_width==index_2)
	{
		return true;
	}
	if(!_border[1]&&index_1+1==index_2)
	{
		return true;
	}
	if(!_border[2]&&index_1+_width==index_2)
	{
		return true;
	}
	if(!_border[3]&&index_1-1==index_2)
	{
		return true;
	}
	return false;
}

bool Map::CheckMazeTileConn(int index_1,int openDir,int index_2)
{
	//true means cannot pass
	if(openDir==0&&index_1-_width==index_2)
	{
		CheckBorder(index_2);
		if(!_border[2])
			return true;
	}
	if(openDir==1&&index_1+1==index_2)
	{
		CheckBorder(index_2);
		if(!_border[3])
			return true;
	}
	if(openDir==2&&index_1+_width==index_2)
	{
		CheckBorder(index_2);
		if(!_border[0])
			return true;
	}
	if(openDir==3&&index_1-1==index_2)
	{
		CheckBorder(index_2);
		if(!_border[1])
			return true;
	}
	return false;
}

bool Map::CheckMazePath()
{
	IW_CALLSTACK("MAP::CHECKMAZEPATH()");
	if(!CheckTileConn(mazeStartIndex[mazeFinished],mapStartIndex[mazeFinished]))
		return false;
	
	_path->Init(mazeStartIndex[mazeFinished],mazeEndIndex[mazeFinished]);
	CIwArray<int> openNodes,closeNodes;

	openNodes.append(mazeStartIndex[mazeFinished]);
	for(int i=0;i<openNodes.size();i++)
	{
		int curIndex=openNodes[i];
		if(closeNodes.contains(curIndex))
			continue;
		CheckBorder(curIndex);
		int index_Layer_Maze;
		bool bor[4];
		memcpy(bor,_border,sizeof(_border));
		IW_CALLSTACK("MAP::CHECKMAZEPATH()-memcpy");
		for(int j=0;j!=4;j++)
		{
			//true means cannot pass
			if(!bor[j])
			{
				int ind=curIndex;
				switch(j)
				{
				case 0:
					ind=curIndex-_width;break;
				case 1:
					ind=curIndex+1;break;
				case 2:
					ind=curIndex+_width;break;
				case 3:
					ind=curIndex-1;break;
				}
				index_Layer_Maze=_layer_maze->m_TileIndex[ind]-_tileset_maze->m_firstGid;
				IW_CALLSTACK("MAP::CHECKMAZEPATH()-index_Layer_Maze");
				if(index_Layer_Maze>=0)
				{
					if(CheckMazeTileConn(curIndex,j,ind))
					{
						_path->AddPathNode(ind,curIndex);
						if(!openNodes.contains(ind))
							openNodes.append(ind);
					}
				}
			}
		}
		closeNodes.append(openNodes[i]);
		
	}
	if(closeNodes.find(mazeEndIndex[mazeFinished])!=-1)
	{
		if(CheckTileConn(mazeEndIndex[mazeFinished],mapEndIndex[mazeFinished]))
		{
			int a=_TileDir[mazeEndIndex[mazeFinished]];
				
			mazeFinished++;
			openNodes.clear_optimised();
			closeNodes.clear_optimised();
			return true;
		}
	}
	
	openNodes.clear_optimised();
	closeNodes.clear_optimised();
	return false;
}

void Map::CheckBorder(int index)
{
	//-4- get layer index
	int index_Layer_Base,index_Layer_Middle,index_Layer_Maze;
	index_Layer_Base=-1;
	index_Layer_Middle=-1;
	index_Layer_Maze=-1;
	//make sure tile index is valid
	//bool _border[4]={false,false,false,false};
	if(index>=0&&index<=_total)	
	{
		//index_Map[i]=-1;
		index_Layer_Base=_layer_base->m_TileIndex[index]-_tileset_map->m_firstGid;
		index_Layer_Middle=_layer_middle->m_TileIndex[index]-_tileset_map->m_firstGid;
		index_Layer_Maze=_layer_maze->m_TileIndex[index]-_tileset_maze->m_firstGid;
		//-5- get border info for each tile
		bool border_base[4]={false,false,false,false};
		bool border_middle[4]={false,false,false,false};
		bool border_maze[4]={false,false,false,false};
		if(index_Layer_Base>=0)
		{
			TileUnit* ind = _tileset_map->GetTileUnit(index_Layer_Base);
			memcpy(border_base,ind->m_border,sizeof(border_base));

		}
		if(index_Layer_Middle>=0)
		{
			TileUnit* ind =_tileset_map->GetTileUnit(index_Layer_Middle);
			memcpy(border_middle,ind->m_border,sizeof(border_middle));
			
		}
		if(index_Layer_Maze>=0)
		{
			TileUnit* ind=_tileset_maze->GetTileUnit(index_Layer_Maze);
			ind->Rotate(_layer_maze->m_rotatable? _TileDir[index]:0);
			memcpy(border_maze,ind->m_borderRot,sizeof(border_maze));
			
		}
		//std::cout<<"Tile index["<<index_Map[i]<<"]"<<std::endl;
		//std::cout<<"border_base["<<i<<"]: index["<<index_Layer_Base<<"]:"<<border_base[0]<<","<<border_base[1]<<","<<border_base[2]<<","<<border_base[3]<<std::endl;
		//std::cout<<"border_middle["<<i<<"]: index["<<index_Layer_Middle<<"]:"<<border_middle[0]<<","<<border_middle[1]<<","<<border_middle[2]<<","<<border_middle[3]<<std::endl;
		//std::cout<<"border_maze["<<i<<"]: index["<<index_Layer_Maze<<"]:"<<border_maze[0]<<","<<border_maze[1]<<","<<border_maze[2]<<","<<border_maze[3]<<std::endl;
		for(int j=0;j!=4;j++)
			_border[j]=border_base[j]|border_middle[j]|border_maze[j];
		//std::cout<<"border["<<i<<"]: "<<border[0]<<","<<border[1]<<","<<border[2]<<","<<border[3]<<std::endl;
	}
	//return border;
}

//return true means has collide with obstacles
bool Map::CheckCollision(CIwFVec2 characterPos,CIwSVec2 characterBox,CIwFVec2 &target,CIwFVec2 characterPrePos)
{
	//get border info for each _TileObstacles by checking certain tile's border info stored in tileset for each layer
	//-1- get current character standing on tile index from the map

	//check if character has moved to another tile since last frame, if not then don't update the rest
	if(_characterPreIndex!=_characterIndex)
	{	
		int index_Map[9];
		//-2- get nearby 9 tiles index      0,1,2
		//									3,4,5
		//									6,7,8
		index_Map[0]=_characterIndex-_width-1;
		index_Map[1]=_characterIndex-_width;
		index_Map[2]=_characterIndex-_width+1;
		index_Map[3]=_characterIndex-1;
		index_Map[4]=_characterIndex;
		index_Map[5]=_characterIndex+1;
		index_Map[6]=_characterIndex+_width-1;
		index_Map[7]=_characterIndex+_width;
		index_Map[8]=_characterIndex+_width+1;

		//-3- get position for each nearby tiles
		CIwFVec2 pos_Map[9];
		pos_Map[4]=CIwFVec2(_index_Map_X*_tileWidth,_index_Map_Y*_tileHeight);
		pos_Map[0]=CIwFVec2((_index_Map_X-1)*_tileWidth,(_index_Map_Y-1)*_tileHeight);
		pos_Map[1]=CIwFVec2(_index_Map_X*_tileWidth,(_index_Map_Y-1)*_tileHeight);
		pos_Map[2]=CIwFVec2((_index_Map_X+1)*_tileWidth,(_index_Map_Y-1)*_tileHeight);
		pos_Map[3]=CIwFVec2((_index_Map_X-1)*_tileWidth,_index_Map_Y*_tileHeight);
		pos_Map[5]=CIwFVec2((_index_Map_X+1)*_tileWidth,_index_Map_Y*_tileHeight);
		pos_Map[6]=CIwFVec2((_index_Map_X-1)*_tileWidth,(_index_Map_Y+1)*_tileHeight);
		pos_Map[7]=CIwFVec2(_index_Map_X*_tileWidth,(_index_Map_Y+1)*_tileHeight);
		pos_Map[8]=CIwFVec2((_index_Map_X+1)*_tileWidth,(_index_Map_Y+1)*_tileHeight);

		int index_Layer_Base,index_Layer_Middle,index_Layer_Maze;
	
		for(int i=0;i!=9;i++)
		{
			CheckBorder(index_Map[i]);
			_TileObstacles[i].UpdateObstacle(_border,pos_Map[i]);
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

void Map::Render(CIwSVec2 characterBox)
{
	IW_CALLSTACK("MAP::Render()");
	if(_BGImage)
		Iw2DDrawImage(_BGImage,CIwSVec2(0,0));
	int index_Touched=-1;
	m_tileRotating=false;
	
	if(current_States==S3E_POINTER_STATE_DOWN)
	{
		CIwFVec2 touch=m_Position+GetTouches(S3E_POINTER_STATE_DOWN);
		int index_y=int(touch.y)/_tileset_map->GetSize().y;
		int index_x=int(touch.x)/_tileset_map->GetSize().x;
		index_Touched=index_y*_width+index_x;
		touchedNPC=CheckNPC(index_Touched);
		if(touchedNPC>=0)
		{
			std::cout<<"NPC!!!"<<std::endl;
			showDialog++;
			if(showDialog>=_NPCs[touchedNPC]->m_Dialogs.size())
				showDialog=-1;
		}
		if(_blocked&&(_layer_maze->m_TileIndex[index_Touched]-_tileset_maze->m_firstGid)>=0)
		{
			m_rotateCount++;
			m_tileRotating=true;
			_TileDir[index_Touched]+=1;
			if(_TileDir[index_Touched]==4)
				_TileDir[index_Touched]=0;
		}
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
		_tileset_map->Render(_layer_npc->m_TileIndex[i],topleft,_layer_npc->m_rotatable? _TileDir[i]:0);
	}
	for(int i=0;i!=9;i++)
	{
		_TileObstacles[i].Render(m_Position,false,characterBox,i);
	}
	if(showDialog>=0&&touchedNPC>=0)
	{
		_NPCs[touchedNPC]->Dialog(showDialog);
	}
	
}
