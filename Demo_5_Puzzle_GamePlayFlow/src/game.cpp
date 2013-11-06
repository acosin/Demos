#include "Iw2D.h"
#include "s3e.h"
#include "IwGx.h"
#include "game.h"
#include <iostream>
#include "s3ePointer.h"

CGame::~CGame()
{
	delete _MapLobby;
	delete _MapLevel_1;
	delete _Character;
	delete _Music;
	delete _SE;
	delete _UI;
}
//load resource and initialize
void CGame::LoadRes()
{
	
	_MapLobby= new Map;
	_MapLevel_1=new Map;
	_Character=new Character;
	_Music=new Music;
	_SE=new SE;
	_UI=new UI;
	//IwMemBucketDebugSetBreakpoint(331) ;
	_MapLobby->Load("Alpha 8 - Lobby.json");
	_MapLevel_1->Load("Alpha 8 - Level1.json");
	//load character img
	_Character->Load();
	currentMap=_MapLobby;
	_Character->Init(currentMap->_StartPos);
	currentMap->Init();
	_Music->Init("audios/music_placeholder.mp3");

	_SE->Init("footstep_L1","footstep_R1");
	_UI->Load();
}

void CGame::Update(int deltaTime)
{
	UpdateInput(deltaTime);
	if(_UI->IsTouched())
		std::cout<<"Touched"<<std::endl;
	// Update Iw Sound Manager
	IwGetSoundManager()->Update();
    // game logic goes here
	if(!_Music->Update(false))
		s3eDebugPrint(300, 100, "error Audio support", 0);

	
	if(current_States==S3E_POINTER_STATE_PRESSED)// Checking if screen has been touched first, otherwise keep character still when start a stage
	{	
		//CIwFVec2 touch=currentMap->m_Position+GetTouches(S3E_POINTER_STATE_RELEASED);
		_Character->m_TargetOnScreen=GetTouches(S3E_POINTER_STATE_PRESSED);
		_Character->m_Target=_Character->m_TargetOnScreen+currentMap->m_Position;
		
	}
	currentMap->SetCharacterIndex(_Character->m_Position);
	if(currentMap->CheckBlock())
		return;
	if(currentMap->CheckDoor())
	{
		currentMap=_MapLevel_1;
		_Character->Init(currentMap->_StartPos);
		currentMap->SetCharacterIndex(_Character->m_Position);
		currentMap->Init();
	}
	if(currentMap->CheckEndPoint())
		return;
	if(_Character->GetDistanceToTarget()>1.0f)
	{
		
		if(!currentMap->CheckMapEdge())
			_Character->m_Target=_Character->m_Position;

		else
		{
			if(_Character->m_Target.x<_Character->m_Position.x-currentMap->m_Position.x)
				_Character->m_Target.x=_Character->m_Position.x-currentMap->m_Position.x;
			if(_Character->m_Target.y<_Character->m_Position.y-currentMap->m_Position.y)
				_Character->m_Target.y=_Character->m_Position.y-currentMap->m_Position.y;

			if(_Character->m_Target.x>_Character->m_Position.x+currentMap->GetMapSize().x-Iw2DGetSurfaceWidth()-currentMap->m_Position.x)
				_Character->m_Target.x=_Character->m_Position.x+currentMap->GetMapSize().x-Iw2DGetSurfaceWidth()-currentMap->m_Position.x;
			if(_Character->m_Target.y>_Character->m_Position.y+currentMap->GetMapSize().y-Iw2DGetSurfaceHeight()-currentMap->m_Position.y)
				_Character->m_Target.y=_Character->m_Position.y+currentMap->GetMapSize().y-Iw2DGetSurfaceHeight()-currentMap->m_Position.y;

			CIwFVec2 deltaPos=_Character->m_Target - _Character->m_Position;
			CIwFVec2 delta=deltaPos * 0.05f;//calc move steps
			
			_Character->m_Position+=delta;
			currentMap->m_Position+=delta;
			if(!_SE->Update(true))
				s3eDebugPrint(300, 100, "error Audio support", 0);
			if(currentMap->CheckCollision(_Character->m_Position,_Character->m_CollisionBox,_Character->m_Target,_Character->m_PositionPrev))
			{
				_Character->m_Position=_Character->m_PositionPrev;
				currentMap->m_Position=currentMap->m_PositionPrev;
			}
			
		}
		
	}
	
	_Character->m_TargetOnScreen=_Character->m_Target-currentMap->m_Position;
	_Character->m_PositionPrev=_Character->m_Position;
	currentMap->m_PositionPrev=currentMap->m_Position;

}


void CGame::Render()
{
    // for example, clear to black (the order of components is ABGR)
    Iw2DSurfaceClear(0x00ecdeff);
	Iw2DSetColour(0xffffffff);
	IwGxPrintString(230, 10, "MI");
    
	currentMap->Render(_Character->m_CollisionBox);
	_Character->Render(currentMap->m_Position);
	_UI->Render();
    // show the surface
    Iw2DSurfaceShow();
}
