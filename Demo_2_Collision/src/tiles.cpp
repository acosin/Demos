#include "tiles.h"
#include "tile.h"

Tiles::Tiles()
{
	_Total=12;
	_W=4;
	_H=3;
	m_Position=CIwFVec2(320.0f,320.0f);
}

Tiles::~Tiles()
{
	for(int i=0;i!=_Total;i++)
	{
		delete m_Tiles[i];
	}
}

void Tiles::Load()
{
	char* files[2]={"MiM_DownRight","MiM_LeftRight"};
	//init nearbytiles as none tiles are near to character
	int temp_arr[9]={-1,-1,-1,-1,-1,-1,-1,-1,-1};
	memcpy(m_NearByTiles,temp_arr,sizeof(temp_arr));

	for(int i=0;i!=_Total;i++)
	{
		int w=i/_W;
		int h=i%_W;
		CIwFVec2 pos=m_Position+CIwFVec2(h*64.0f,w*64.0f);
		m_Tiles[i]=new Tile(pos,files[i%2],0);
		m_Tiles[i]->Load();
	}
}

void Tiles::Render(CIwFVec2 mapPos,CIwSVec2 characterBox)
{
	for(int i=0;i!=_Total;i++)
		m_Tiles[i]->Render(mapPos,false,characterBox);
	for(int j=0;j!=9;j++)
		if(m_NearByTiles[j]!=-1)
			m_Tiles[m_NearByTiles[j]]->Render(mapPos,true,characterBox);
}
//get tiles where character currently stands near by
void Tiles::CheckCurrTiles(CIwFVec2 characterPos, CIwSVec2 characterBox)
{
	int temp_arr[9]={-1,-1,-1,-1,-1,-1,-1,-1,-1};
	memcpy(m_NearByTiles,temp_arr,sizeof(temp_arr));

	if(characterPos.x<m_Position.x-64)
		return;
	if(characterPos.x>m_Position.x+_W*64+64)
		return;
	if(characterPos.y<m_Position.y-64)
		return;
	if(characterPos.y>m_Position.y+_H*64+64)
		return;
	//outer-left
	if(characterPos.x<m_Position.x)
	{
		//top
		if(characterPos.y<m_Position.y)
			m_NearByTiles[0]=0;
		//bottom
		else if(characterPos.y>m_Position.y+_H*64)
			m_NearByTiles[0]=_W*(_H-1);
		//center
		else
		{	
			int index=int32(characterPos.y-m_Position.y)/64;
			m_NearByTiles[0]=_W*index;
			//not top corner
			if(index!=0)
				m_NearByTiles[1]=_W*(index-1);
			//not bottom corner
			if(index!=_H-1)
				m_NearByTiles[2]=_W*(index+1);
		}
	}
	//outer-right
	else if(characterPos.x>m_Position.x+_W*64)
	{
		//top
		if(characterPos.y<m_Position.y)
			m_NearByTiles[0]=_W-1;
		//bottom
		else if(characterPos.y>m_Position.y+_H*64)
			m_NearByTiles[0]=_Total-1;
		//center
		else
		{
			int index=int32(characterPos.y-m_Position.y)/64;
			m_NearByTiles[0]=_W*(index+1)-1;
			//not top corner
			if(index!=0)
				m_NearByTiles[1]=_W*index-1;
			//not bottom corner
			if(index!=_H-1)
				m_NearByTiles[2]=_W*(index+2)-1;
		}
	}
	//outer-top
	else if(characterPos.y<m_Position.y)
	{
		int index=int32(characterPos.x-m_Position.x)/64;
		m_NearByTiles[0]=index;
		//not left corner
		if(index!=0)
			m_NearByTiles[1]=index-1;
		//not right corner
		if(index!=_W-1)
			m_NearByTiles[2]=index+1;
	}
	//outer-bottom
	else if(characterPos.y>m_Position.y+_H*64)
	{
		int index=int32(characterPos.x-m_Position.x)/64;
		m_NearByTiles[0]=index+_Total-_W;
		//not left corner
		if(index!=0)
			m_NearByTiles[1]=index-1+_Total-_W;
		//not right corner
		if(index!=_W-1)
			m_NearByTiles[2]=index+1+_Total-_W;
	}
	//inner
	else
	{
		int index_w=int32(characterPos.x-m_Position.x)/64;
		int index_h=int32(characterPos.y-m_Position.y)/64;
		m_NearByTiles[0]=index_w+index_h*_W;
		//not left side
		if(index_w!=0)
			m_NearByTiles[4]=index_w+index_h*_W-1;
		//not right side
		if(index_w!=_W-1)
			m_NearByTiles[5]=index_w+index_h*_W+1;
		//not top side
		if(index_h!=0)
		{
			m_NearByTiles[2]=index_w+(index_h-1)*_W;
			//not left side
			if(index_w!=0)
				m_NearByTiles[1]=index_w+(index_h-1)*_W-1;
			//not right side
			if(index_w!=_W-1)
				m_NearByTiles[3]=index_w+(index_h-1)*_W+1;
		}
		//not bottom side
		if(index_h!=_H-1)
		{
			m_NearByTiles[7]=index_w+(index_h+1)*_W;
			//not left side
			if(index_w!=0)
				m_NearByTiles[6]=index_w+(index_h+1)*_W-1;
			//not right side
			if(index_w!=_W-1)
				m_NearByTiles[8]=index_w+(index_h+1)*_W+1;
		}
	}

}

bool Tiles::CheckCollision(CIwFVec2 characterPos, CIwSVec2 characterBox,CIwFVec2 &target)
{
	bool collide=false;
	for(int i=0;i!=9;i++)
	{
		if(m_NearByTiles[i]!=-1)
			if(m_Tiles[m_NearByTiles[i]]->CheckCollision(characterPos,characterBox, target))	//collision check
				collide=true;
	}
	return collide;
}