#include "Iw2D.h"
#include "s3e.h"
#include "IwGx.h"
#include "game.h"
#include <iostream>
#include "s3ePointer.h"

CGame::~CGame()
{
	delete _Character;
	delete _Music;
	delete _SE;
	delete _UI;
}
//load resource and initialize
void CGame::LoadRes()
{
	_currentLevel=0;
	
	_Character=new Character;
	_Music=new Music;
	_SE=new SE;
	_UI=new UI;
	//IwMemBucketDebugSetBreakpoint(331) ;
	_MapLevel.append(new Map);
	_MapLevel[0]->Load(0);
	_MapLevel[0]->Init();
	//load character img
	_Character->Load();
	currentMap=_MapLevel[_currentLevel];
	_Character->Init(currentMap->_StartPos);
	currentMap->Init();
	_Music->Init("audios/music1.mp3");

	_SE->Init("footstep_L1","footstep_R1","noise_2");
	_UI->Load();
	_GS=GS_Playing;
}

void CGame::Update(int deltaTime)
{
	UpdateInput(deltaTime);
	int btn_id=_UI->IsTouched();
	if(btn_id>=0)
	{
		std::cout<<"Touched"<<std::endl;
		if(btn_id==BTN_PAUSE&&_GS==GS_Playing)
			_GS=GS_Pause;
		else if(btn_id==BTN_PAUSE&&_GS==GS_Pause)
			_GS=GS_Playing;
		else if(btn_id==BTN_P_RETURN)
			_GS=GS_Playing;
		else if(btn_id==BTN_P_RESTART)
			_GS=GS_Restart;
		else if(btn_id==BTN_E_RESTART)
			_GS=GS_Restart;
		else if(btn_id==BTN_E_RETURN)
			_GS=GS_Playing;
		else if(btn_id==BTN_P_MUSIC)
			_GS=GS_Playing;
		//current_States=S3E_POINTER_STATE_UP;
	}
	if(_GS==GS_Restart)
	{
		_Character->Init(currentMap->_StartPos);
		currentMap->SetCharacterIndex(_Character->m_Position);
		currentMap->Init();
		_GS=GS_Playing;
		//current_States=S3E_POINTER_STATE_UP;
	}
	if(_GS==GS_Playing)
	{
		//UpdateInput(deltaTime);
		if(currentMap->m_tileRotating)
			_SE->TileRotate();
		if(current_States==S3E_POINTER_STATE_PRESSED)// Checking if screen has been touched first, otherwise keep character still when start a stage
		{	
			//CIwFVec2 touch=currentMap->m_Position+GetTouches(S3E_POINTER_STATE_RELEASED);
			_Character->m_TargetOnScreen=GetTouches(S3E_POINTER_STATE_PRESSED);
			_Character->m_Target=_Character->m_TargetOnScreen+currentMap->m_Position;
		
		}
		currentMap->SetCharacterIndex(_Character->m_Position);
		if(currentMap->CheckBlock())
		{
			if(!currentMap->CheckMazePath())
				return;
		}
		if(currentMap->CheckEndPoint())
		{
			_UI->m_EndPanel->SetVisible(true);
			int tou=_UI->IsTouched();
			if(tou==BTN_E_RETURN)
			{
				delete _MapLevel[_MapLevel.size()-1];
				_MapLevel.pop_back();
				_currentLevel=0;
				currentMap=_MapLevel[_currentLevel];
				_Character->Init(currentMap->_StartPos);
				currentMap->SetCharacterIndex(_Character->m_Position);
				currentMap->Init();
			}
			else
				return;
		}
		if(_currentLevel==0)
		{
			int doorIndex=currentMap->CheckDoor()+1;
			if(doorIndex>0)
			{
				_currentLevel=doorIndex;
				_MapLevel.append(new Map);
				_MapLevel[_MapLevel.size()-1]->Load(_currentLevel);
				_MapLevel[_MapLevel.size()-1]->Init();
				
				currentMap=_MapLevel[_MapLevel.size()-1];
				_Character->Init(currentMap->_StartPos);
				currentMap->SetCharacterIndex(_Character->m_Position);
				currentMap->Init();
			}
		}
	
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
	
	
	if(!_Music->Update(_UI->isMusicPlay))
		s3eDebugPrint(300, 100, "error Audio support", 0);

	// Update Iw Sound Manager
	IwGetSoundManager()->Update();

}


void CGame::Render()
{
    // for example, clear to black (the order of components is ABGR)
    Iw2DSurfaceClear(0x00ecdeff);
	Iw2DSetColour(0xffffffff);
	IwGxPrintString(630, 10, "MI");
    
	currentMap->Render(_Character->m_CollisionBox);
	_Character->Render(currentMap->m_Position);
	_UI->Render();
    // show the surface
    Iw2DSurfaceShow();
}
