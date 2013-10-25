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

#include "Iw2D.h"
#include "s3e.h"
#include "IwGx.h"

#include "game.h"
#include <iostream>
#include "s3ePointer.h"

CGame::CGame()
{
	_Map= new Map;
	_Character=new Character;
	_Tiles=new Tiles;
	_Obstacle=new Obstacle;
	_Audio=new Audio;
}

CGame::~CGame()
{
	delete _Map;
	delete _Character;
	delete _Tiles;
	delete _Obstacle;
	delete _Audio;
}
//load resource and initialize
void CGame::LoadRes()
{
	//IwMemBucketDebugSetBreakpoint(331) ;
	//load map img
	_Map->Load();
	//load character img
	_Character->Load();
	_Tiles->Load();
	char * file="audio.mp3";
	_Audio->Init(file);
	_Obstacle->m_Display=true;
	_Obstacle->m_Position=CIwFVec2(240.0f,240.0f);
	_Obstacle->m_Size=CIwSVec2(50,50);
}

void CGame::Update(int deltaTime)
{
	UpdateInput(deltaTime);

    // game logic goes here
	if(!_Audio->Update())
		s3eDebugPrint(300, 100, "error Audio support", 0);

	if(m_TargetUpdate)// Checking if screen has been touched first, otherwise keep character still when start a stage
	{	
		//CIwFVec2 touch=_Map->m_Position+GetTouches(S3E_POINTER_STATE_RELEASED);
		_Character->m_TargetOnScreen=GetTouches(S3E_POINTER_STATE_UP);
		_Character->m_Target=_Character->m_TargetOnScreen+_Map->m_Position;
		
	}
	if(_Character->GetDistanceToTarget()>0.001f)
	{
		
		if(!_Map->CheckMapEdge())
			_Character->m_Target=_Character->m_Position;

		else
		{
			if(_Character->m_Target.x<_Character->m_Position.x-_Map->m_Position.x)
				_Character->m_Target.x=_Character->m_Position.x-_Map->m_Position.x;
			if(_Character->m_Target.y<_Character->m_Position.y-_Map->m_Position.y)
				_Character->m_Target.y=_Character->m_Position.y-_Map->m_Position.y;

			if(_Character->m_Target.x>_Character->m_Position.x+_Map->GetMapSize().x-Iw2DGetSurfaceWidth()-_Map->m_Position.x)
				_Character->m_Target.x=_Character->m_Position.x+_Map->GetMapSize().x-Iw2DGetSurfaceWidth()-_Map->m_Position.x;
			if(_Character->m_Target.y>_Character->m_Position.y+_Map->GetMapSize().y-Iw2DGetSurfaceHeight()-_Map->m_Position.y)
				_Character->m_Target.y=_Character->m_Position.y+_Map->GetMapSize().y-Iw2DGetSurfaceHeight()-_Map->m_Position.y;

			CIwFVec2 deltaPos=_Character->m_Target - _Character->m_Position;
			CIwFVec2 delta=deltaPos * 0.05f;//calc move steps
			
			_Character->m_Position+=delta;
			_Map->m_Position+=delta;

			_Tiles->CheckCurrTiles(_Character->m_Position,_Character->m_CollisionBox);
			if(_Tiles->CheckCollision(_Character->m_Position,_Character->m_CollisionBox,_Character->m_Target,_Character->m_PositionPrev))
			{
				_Character->m_Position=_Character->m_PositionPrev;
				_Map->m_Position=_Map->m_PositionPrev;

			}

			if(_Obstacle->CollisionDetect(_Character->m_Position,_Character->m_CollisionBox))
			{
				int side=_Obstacle->CollisionSide(_Character->m_PositionPrev,_Character->m_CollisionBox,_Character->m_Target);
				
				_Character->m_Position=_Character->m_PositionPrev;

				_Map->m_Position=_Map->m_PositionPrev;
			}
			
		}
		
	}
	
	_Character->m_TargetOnScreen=_Character->m_Target-_Map->m_Position;
	_Character->m_PositionPrev=_Character->m_Position;
	_Map->m_PositionPrev=_Map->m_Position;

}


void CGame::Render()
{
    // for example, clear to black (the order of components is ABGR)
    Iw2DSurfaceClear(0x00ff0000);
	IwGxPrintString(230, 10, "MI");
    
	// draw a red square
    //Iw2DSetColour(0xff0000ff);
    // note conversion to pixel coordinates
    //Iw2DFillRect(CIwSVec2((iwsfixed)m_Position.x, (iwsfixed)m_Position.y) - m_Size/IW_FIXED(2), m_Size);
	//Iw2DDrawImage(backgroundImage, CIwSVec2(0, 0));
	//Iw2DDrawImage(starImage, CIwSVec2((iwsfixed)m_Position.x, (iwsfixed)m_Position.y) - m_Size/IW_FIXED(2));

	_Map->Render(_Character->m_CollisionBox);
	_Obstacle->Render(_Map->m_Position,_Character->m_CollisionBox);
	_Tiles->Render(_Map->m_Position,_Character->m_CollisionBox);
	_Character->Render(_Map->m_Position);
    // show the surface
    Iw2DSurfaceShow();
}
