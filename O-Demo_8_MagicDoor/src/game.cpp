#include "Iw2D.h"
#include "s3e.h"
#include "IwGx.h"
#include "game.h"
#include <iostream>
#include "s3ePointer.h"
#include "stdio.h"
#include "string.h"
#include <math.h>
#include <sstream>
CGame::~CGame()
{
	delete _Character;
	delete _Music_1;
	delete _Music_2;
	delete _SE;
	delete _UI;
	_imageTut.clear_optimised();
	_MapLevel.clear_optimised();
}
//load resource and initialize
void CGame::LoadRes()
{
	_currentLevel=0;
	lastPlayedMusic=-1;
	//conditions of tutorial
	_firstLaunch=true;
	_firstLaunchLevel1=true;
	_enterDoor=false;
	_enterDoorDisplayed=false;
	_mazeFinish=false;
	_mazeFinishDisplayed=false;
	_levelFinish=false;
	_setEndingText=false;
	_imageTut.append(Iw2DCreateImageResource("tuttext_1"));
	_imageTut.append(Iw2DCreateImageResource("tuttext_2"));
	_imageTut.append(Iw2DCreateImageResource("tuttext_3"));
	_imageTut.append(Iw2DCreateImageResource("tuttext_4"));

	_timeLevelCost=0;
	_timeElapsed=0;
	_Character=new Character;
	_Music_1=new Music;
	_Music_2=new Music;
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
	_Music_1->Init("audios/music1.mp3");
	_Music_2->Init("audios/music2.mp3");
	_SE->Init();
	_SE->AddSFX("footstep_L1");
	_SE->AddSFX("footstep_R1");
	_SE->AddSFX("noise_2");
	_SE->AddSFX("button_1");
	_UI->Load();
	_GS=GS_Playing;
}

void CGame::EnterLevel(int levelIndex)
{
	_currentLevel=levelIndex;
	_MapLevel.append(new Map);
	_MapLevel[_MapLevel.size()-1]->Load(_currentLevel);
	_MapLevel[_MapLevel.size()-1]->Init();
				
	currentMap=_MapLevel[_MapLevel.size()-1];
	_Character->Init(currentMap->_StartPos);
	currentMap->SetCharacterIndex(_Character->m_Position);
	currentMap->Init();
}

void CGame::TutCheckCondition(int deltaTime)
{
	if(_firstLaunch)
	{
		_timeElapsed+=deltaTime;
		if(_timeElapsed>=3000)
		{
			_firstLaunch=false;
			_timeElapsed=0;
		}
	}
	if(_currentLevel==1&&_firstLaunchLevel1)
	{
		if(_enterDoor)
		{
			_enterDoor=false;
			_timeElapsed=0;
		}
		_firstLaunch=false;
		
		_timeElapsed+=deltaTime;
		if(_timeElapsed>=3000)
		{
			_firstLaunchLevel1=false;
			_timeElapsed=0;
		}
	}
	if(!_enterDoorDisplayed&&(currentMap->GetCharaIndex()==1990||currentMap->GetCharaIndex()==2033))//hard code!!!!!!!
	{
		_firstLaunch=false;
		_timeElapsed=0;
		_enterDoor=true;
		_enterDoorDisplayed=true;
	}
	if(_enterDoor)
	{
		_timeElapsed+=deltaTime;
		
		if(_timeElapsed>=3000)
		{
			_enterDoor=false;
			_timeElapsed=0;
		}
	}
	if(_currentLevel==1&&!_mazeFinishDisplayed&&currentMap->GetCharaIndex()==currentMap->GetMazeExitIndex())//hard code!!!!!!!
	{
		_firstLaunch=false;
		_firstLaunchLevel1=false;
		_enterDoor=false;
		_timeElapsed=0;
		_mazeFinish=true;
		_mazeFinishDisplayed=true;
	}
	if(_mazeFinish)
	{
		_timeElapsed+=deltaTime;
		
		if(_timeElapsed>=3000)
		{
			_mazeFinish=false;
			_timeElapsed=0;
		}
	}
	if(_UI->m_EndPanel->isDisplay){	_mazeFinish=false;_timeElapsed=0;}
}

void CGame::Update(int deltaTime)
{
	TutCheckCondition(deltaTime);
	_Character->_CS=idle;
	UpdateInput(deltaTime);
	int btn_id=_UI->IsTouched();
	bool btnYES=false;
	bool btnCancel=false;
	if(btn_id>=0)
	{
		std::cout<<"Touched"<<std::endl;
		_SE->Play(3);
		if(btn_id==BTN_PAUSE&&_GS==GS_Playing)
			_GS=GS_Pause;
		else if(btn_id==BTN_PAUSE&&_GS==GS_Pause)
			_GS=GS_Playing;
		else if(btn_id==BTN_P_RETURN)
			_GS=GS_Playing;
		else if(btn_id==BTN_P_RESTART)
			_GS=GS_Restart;
		else if(btn_id==BTN_E_RESTART)
		{	_GS=GS_Restart;	std::cout<<"E_RS"<<std::endl;}
		else if(btn_id==BTN_E_RETURN)
			_GS=GS_Playing;
		else if(btn_id==BTN_P_MUSIC)
			_GS=GS_Playing;
		else if(btn_id==BTN_P_QUIT)
			_GS=GS_QUIT;
		else if(btn_id==BTN_V_YES)
			btnYES=true;
		else if(btn_id==BTN_V_CANCEL)
			btnCancel=true;
		//current_States=S3E_POINTER_STATE_UP;
	}
	if(_GS==GS_QUIT)//quit to lobby
	{
		_timeLevelCost=0;
		_GS=GS_QU_VERIF;
	}
	if(_GS==GS_Restart)//restart cur level
	{
		_timeLevelCost=0;
		_setEndingText=false;
		_levelFinish=false;
		_GS=GS_RS_VERIF;
	}
	if(_GS==GS_QU_VERIF)
	{
		if(btnYES)
		{
			if(_MapLevel.size()>0&&_currentLevel!=0)
			{
				delete _MapLevel[_MapLevel.size()-1];
				_MapLevel.pop_back();
			}
			_currentLevel=0;
			currentMap=_MapLevel[_currentLevel];

			_Character->Init(currentMap->_StartPos);
			currentMap->SetCharacterIndex(_Character->m_Position);
			currentMap->Init();
			_GS=GS_Playing;
			//current_States=S3E_POINTER_STATE_UP;
		}
		else if(btnCancel)
		{
			_GS=GS_Playing;
		}
	}
	if(_GS==GS_RS_VERIF)
	{
		if(btnYES)
		{
			
			_Character->Init(currentMap->_StartPos);
			currentMap->SetCharacterIndex(_Character->m_Position);
			currentMap->Init();
			_GS=GS_Playing;
			//current_States=S3E_POINTER_STATE_UP;
		}
		else if(btnCancel)
		{
			_GS=GS_Playing;
		}
	}
	if(_GS==GS_Playing)
	{
		OnPlaying(deltaTime);
	}
	
	_Character->Update(deltaTime);
	
	PlayAudio();
	// Update Iw Sound Manager
	IwGetSoundManager()->Update();


	
}

void CGame::OnPlaying(int deltaTime)
{
	if(!_levelFinish)
		_timeLevelCost+=deltaTime;
	//UpdateInput(deltaTime);
	if(currentMap->m_tileRotating)
		_SE->Play(2);
	if(current_States==S3E_POINTER_STATE_PRESSED)// Checking if screen has been touched first, otherwise keep character still when start a stage
	{	
		//CIwFVec2 touch=currentMap->m_Position+GetTouches(S3E_POINTER_STATE_RELEASED);
		_Character->m_TargetOnScreen=GetTouches(S3E_POINTER_STATE_PRESSED);
		_Character->m_Target=_Character->m_TargetOnScreen+currentMap->m_Position;
		
	}
	currentMap->SetCharacterIndex(_Character->m_Position);
	if(currentMap->CheckBlock())// enter maze entrance
	{
		if(!currentMap->CheckMazePath())
			return;
	}
	if(currentMap->CheckEndPoint())// finish a level
	{
		_levelFinish=true;
		if(!_setEndingText)
		{
			std::string s="Time: ";
			float tlc=((float)_timeLevelCost)/1000.0f;
			//std::string s_temp = boost::lexical_cast<std::string>(tlc);
			std::ostringstream ss;
			ss << tlc;
			s.append(ss.str());
			s.append("\tRotate: ");
			//char *txt=(char*)s.c_str();
			ss.flush();
			ss.clear();
			std::ostringstream ss_R;
			ss_R<<currentMap->m_rotateCount;
			ss_R.flush();
			ss_R.clear();
			s.append(ss_R.str());
			std::cout<<s<<std::endl;
			_UI->m_EndPanel->SetText(s,CIwSVec2(Iw2DGetSurfaceWidth()/2-150,Iw2DGetSurfaceHeight()/2+50),2,0x00008800);
			_setEndingText=true;
		}
		

		_UI->m_EndPanel->SetVisible(true);
		int tou=_UI->IsTouched();
		if(tou==BTN_E_RETURN)
		{
			delete _MapLevel[_MapLevel.size()-1];
			_MapLevel.pop_back();
			int door_Index=_MapLevel[0]->m_doors[_currentLevel-1];

			_currentLevel=0;

			currentMap=_MapLevel[_currentLevel];
			int pos[2]={door_Index%currentMap->_width+1,door_Index/currentMap->_width+2};
			//_Character->Init(currentMap->_StartPos);
			_Character->Init(pos);
			currentMap->SetCharacterIndex(_Character->m_Position);
			//currentMap->Init();
			currentMap->Init(pos);
		}
		else
			return;
	}
	if(_currentLevel==0)
	{
		int doorIndex=currentMap->CheckDoor()+1;
		//1st level->1st & 2nd level->all levels
		if(doorIndex>0)
			EnterLevel(doorIndex);
	}
	
	if(_Character->GetDistanceToTarget()>10.0f)
	{
		CIwFVec2 deltaPos=_Character->m_Target - _Character->m_Position;
		if(deltaPos.x>0)
		{
			_Character->_CS=right;
		}
		else if(deltaPos.x<0)
		{
			_Character->_CS=left;
		}
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

				
			float r=deltaPos.x*deltaPos.x+deltaPos.y*deltaPos.y;
			r=sqrt(r);
			deltaPos=CIwFVec2(deltaPos.x/r,deltaPos.y/r);
			CIwFVec2 delta=deltaPos * 9.0f;//calc move steps
			//CIwFVec2 delta=deltaPos * 0.05f;//calc move steps
			
			_Character->m_Position+=delta;
			currentMap->m_Position+=delta;

			if(!_SE->Update(true))
				s3eDebugPrint(300, 100, "error Audio support", 0);

			if(currentMap->CheckCollision(_Character->m_Position,_Character->m_CollisionBox,_Character->m_Target,_Character->m_PositionPrev))
			{
				_Character->m_Position=_Character->m_PositionPrev;
				currentMap->m_Position=currentMap->m_PositionPrev;
					
				//CIwFVec2 deltaPos=_Character->m_Target - _Character->m_Position;
				//float r=deltaPos.x*deltaPos.x+deltaPos.y*deltaPos.y;
				//r=sqrt(r);
				//deltaPos=CIwFVec2(deltaPos.x/r,deltaPos.y/r);
				//CIwFVec2 delta=deltaPos * 10.0f;//calc move steps
				//CIwFVec2 delta=deltaPos * 0.05f;//calc move steps
				//
				//_Character->m_Position+=delta;
				//currentMap->m_Position+=delta;
			}
		}
		
	}
	/*else if(_Character->GetDistanceToTarget()<10.0f)
	{
		_Character->m_Position=_Character->m_Target;
		currentMap->m_Position=_Character->m_Target;
	}*/
		
	_Character->m_TargetOnScreen=_Character->m_Target-currentMap->m_Position;
	_Character->m_PositionPrev=_Character->m_Position;
	currentMap->m_PositionPrev=currentMap->m_Position;
}

void CGame::PlayAudio()
{
	if(_currentLevel==0)
	{
		if(lastPlayedMusic==-1||lastPlayedMusic==0)
		{
			if(!_Music_1->Update(_UI->isMusicPlay))
				s3eDebugPrint(300, 100, "error Audio support", 0);
			lastPlayedMusic=0;
			//std::cout<<"played first"<<std::endl;
		}
		else if(lastPlayedMusic==1)
		{
			_Music_2->Stop();
			if(!_Music_1->Update(_UI->isMusicPlay))
				s3eDebugPrint(300, 100, "error Audio support", 0);
			lastPlayedMusic=0;
		}
	}
	else
	{
		if(lastPlayedMusic==1)
		{
			if(!_Music_2->Update(_UI->isMusicPlay))
				s3eDebugPrint(300, 100, "error Audio support", 0);
			lastPlayedMusic=1;
			//std::cout<<"played first"<<std::endl;
		}
		else
		{
			_Music_1->Stop();
			if(!_Music_2->Update(_UI->isMusicPlay))
				s3eDebugPrint(300, 100, "error Audio support", 0);
			lastPlayedMusic=1;
		}
	}
	//if(lastPlayedMusic==-1)
	//{
	//	if(!_Music_1->Update(_UI->isMusicPlay))
	//		s3eDebugPrint(300, 100, "error Audio support", 0);
	//	lastPlayedMusic=0;
	//	//std::cout<<"played first"<<std::endl;
	//}
	//else if(lastPlayedMusic==0)
	//{
	//	if(_Music_1->g_Status_RN==STOPPED)
	//	{
	//		if(!_Music_2->Update(_UI->isMusicPlay))
	//			s3eDebugPrint(300, 100, "error Audio support", 0);
	//		lastPlayedMusic=1;
	//		//std::cout<<"played second"<<std::endl;
	//	}
	//	else
	//	{
	//		if(!_Music_1->Update(_UI->isMusicPlay))
	//			s3eDebugPrint(300, 100, "error Audio support", 0);
	//	}
	//}
	//else if(lastPlayedMusic==1)
	//{
	//	if(_Music_2->g_Status_RN==STOPPED)
	//	{
	//		if(!_Music_1->Update(_UI->isMusicPlay))
	//			s3eDebugPrint(300, 100, "error Audio support", 0);
	//		lastPlayedMusic=0;
	//	}
	//	else
	//	{
	//		if(!_Music_2->Update(_UI->isMusicPlay))
	//			s3eDebugPrint(300, 100, "error Audio support", 0);
	//	}
	//}
}

void CGame::Render()
{
    // for example, clear to black (the order of components is ABGR)
    Iw2DSurfaceClear(0x00ecdeff);
	Iw2DSetColour(0xffffffff);
	std::string s;

	if(_currentLevel==0)
		s.append("Lobby");
	else
	{	
		s.append("Level ");
		std::ostringstream ss;
		ss << _currentLevel;
		s.append(ss.str());
	}

	IwGxPrintSetScale(2);
	IwGxPrintString(630, 10, (char*)s.c_str());
    
	currentMap->Render(_Character->m_CollisionBox);
	_Character->Render(currentMap->m_Position);
	_UI->Render();
	if(_firstLaunch)
		Iw2DDrawImage(_imageTut[0],CIwSVec2(300,300));
	if(_currentLevel==1&&_firstLaunchLevel1)
		Iw2DDrawImage(_imageTut[1],CIwSVec2(300,300));
	if(_enterDoor)
		Iw2DDrawImage(_imageTut[2],CIwSVec2(300,300));
	if(_mazeFinish)
		Iw2DDrawImage(_imageTut[3],CIwSVec2(300,300));
    // show the surface
    Iw2DSurfaceShow();
}
