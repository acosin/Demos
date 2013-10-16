/*
 * This file is part of the Marmalade SDK Code Samples.
 *
 * (C) 2001-2012 Marmalade. All Rights Reserved.
 *
 * This source code is intended only as a supplement to the Marmalade SDK.
 *
 * THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY
 * KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
 * PARTICULAR PURPOSE.
 */
#include "s3e.h"
#include "Iw2D.h"
#include "IwGx.h"

#include "game.h"
#include "input.h"
#include "character.h"
#include "map.h"
#include "tile.h"

CGame::CGame()
{
	m_Map= new Map;
	m_Character=new Character;
	m_Tile=new Tile;
}

CGame::~CGame()
{
	delete m_Map;
	delete m_Character;
	delete m_Tile;
}

void CGame::Update(int deltaTime)
{
	UpdateInput(deltaTime);

    // game logic goes here
	
	m_Character->m_TargetOnScreen=m_Character->m_Target-m_Map->m_Position;
	if(m_StartTouch)
	{// Checking if screen has been touched first, otherwise keep character still when start a stage
		m_Character->m_TargetOnScreen=GetTouches();
		m_Character->m_Target = m_Character->m_TargetOnScreen+m_Map->m_Position;
	}
	if(m_Character->GetDistanceToTarget()>0.001f)
	{
		if(!m_Map->CheckMapEdge())
			m_Character->m_Target=m_Character->m_Position;
		else
		{
			
			if(m_Character->m_Target.x<m_Character->m_Position.x-m_Map->m_Position.x)
				m_Character->m_Target.x=m_Character->m_Position.x-m_Map->m_Position.x;
			if(m_Character->m_Target.y<m_Character->m_Position.y-m_Map->m_Position.y)
				m_Character->m_Target.y=m_Character->m_Position.y-m_Map->m_Position.y;

			if(m_Character->m_Target.x>m_Character->m_Position.x+m_Map->GetMapSize().x-Iw2DGetSurfaceWidth()-m_Map->m_Position.x)
				m_Character->m_Target.x=m_Character->m_Position.x+m_Map->GetMapSize().x-Iw2DGetSurfaceWidth()-m_Map->m_Position.x;
			if(m_Character->m_Target.y>m_Character->m_Position.y+m_Map->GetMapSize().y-Iw2DGetSurfaceWidth()-m_Map->m_Position.y)
				m_Character->m_Target.y=m_Character->m_Position.y+m_Map->GetMapSize().y-Iw2DGetSurfaceWidth()-m_Map->m_Position.y;
		
			CIwFVec2 deltaPos=m_Character->m_Target - m_Character->m_Position;
			CIwFVec2 delta=deltaPos * 0.05f;//calc move steps
			
			m_Character->m_Position+=delta;
			m_Map->m_Position+=delta;
		}
		
	}


	m_Character->Update(deltaTime);
	m_Map->Update(deltaTime);
}

void CGame::LoadRes()
{
	//load map img
	m_Map->Load();
	//load character img
	m_Character->Load();

	m_Tile->Load("MiM_Blocked");
}

void CGame::Render()
{
    // game render goes here

    // for example, clear to black (the order of components is ABGR)
    Iw2DSurfaceClear(0x00000000);
	IwGxPrintString((int32)m_Character->m_TargetOnScreen.x, (int32)m_Character->m_TargetOnScreen.y, "T");
    
	// draw a red square
    //Iw2DSetColour(0xff0000ff);
    // note conversion to pixel coordinates
    //Iw2DFillRect(CIwSVec2((iwsfixed)m_Position.x, (iwsfixed)m_Position.y) - m_Size/IW_FIXED(2), m_Size);
	//Iw2DDrawImage(backgroundImage, CIwSVec2(0, 0));
	//Iw2DDrawImage(starImage, CIwSVec2((iwsfixed)m_Position.x, (iwsfixed)m_Position.y) - m_Size/IW_FIXED(2));

	m_Map->Render();
	m_Tile->Render(m_Map->m_Position);
	m_Character->Render();
    // show the surface
    Iw2DSurfaceShow();
}
