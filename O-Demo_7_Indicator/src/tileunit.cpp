#include "tileunit.h"
#include <iostream>
void TileUnit::Init(bool border[],bool isDoor,bool isEndPoint,bool isNPC,int NPCindex)
{
	memcpy(m_border,border,sizeof(border));
	m_isDoor=isDoor;
	m_isEndPoint=isEndPoint;
	m_isNPC=isNPC;
	m_NPCIndex=NPCindex;
}
void TileUnit::Init(bool border[],bool isDoor,bool isEndPoint,bool isNPC)
{
	memcpy(m_border,border,sizeof(border));
	m_isDoor=isDoor;
	m_isEndPoint=isEndPoint;
	m_isNPC=isNPC;
	m_NPCIndex=-1;
}

void TileUnit::Rotate(int rotation)
{
	//bool *b[4];
	//	TODO: error check when index is incorrect
	if(rotation==0)
	{
		//std::cout<<"m_border: "<<m_border[0]<<","<<m_border[1]<<","<<m_border[2]<<","<<m_border[3]<<std::endl;
		//return *m_border;
		m_borderRot[0]=m_border[0];
		m_borderRot[1]=m_border[1];
		m_borderRot[2]=m_border[2];
		m_borderRot[3]=m_border[3];
	}
	else if(rotation==1)
	{
		m_borderRot[0]=m_border[3];
		m_borderRot[1]=m_border[0];
		m_borderRot[2]=m_border[1];
		m_borderRot[3]=m_border[2];
		//return m_borderRot;
	}
	else if(rotation==2)
	{
		m_borderRot[0]=m_border[2];
		m_borderRot[1]=m_border[3];
		m_borderRot[2]=m_border[0];
		m_borderRot[3]=m_border[1];
		//return *m_borderRot;
	}
	else if(rotation==3)
	{
		m_borderRot[0]=m_border[1];
		m_borderRot[1]=m_border[2];
		m_borderRot[2]=m_border[3];
		m_borderRot[3]=m_border[0];
		//return *m_borderRot;
	}
	
	//std::cout<<"border: "<<border[0]<<","<<border[1]<<","<<border[2]<<","<<border[3]<<std::endl;
}