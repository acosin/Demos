#ifndef GAME_H
#define GAME_H

#include "map.h"
#include "character.h"
#include "obstacle.h"
#include "music.h"
#include "SE.h"
#include "input.h"
#include "ui.h"
#include <IwArray.h>
#define GS_Start 0
#define GS_Playing 1
#define GS_Pause 2
#define GS_Stop 3
#define GS_Restart 4
#define GS_QUIT 5
#define GS_RETURN 6
#define GS_RS_VERIF 7
#define GS_QU_VERIF 8
class CGame
{
public:
	CGame(){}
    ~CGame();

    // update will be called a fixed number of times per second
    // regardless of visual framerate
    void Update(int deltaTime);
    // render will be called as fast as possible (but not faster
    // than the update rate)
    void Render();

	// loading images from resource
	void LoadRes();
	void EnterLevel(int levelIndex);
	void TutCheckCondition(int deltaTime);
	void PlayAudio();
	void OnPlaying(int deltaTime);
private:
	CIwArray<Map*> _MapLevel;
	Map* currentMap;
	Character* _Character;
	Music* _Music_1;
	Music* _Music_2;
	CIwArray<CIw2DImage*> _imageTut;
	SE* _SE;
	UI* _UI;
	int _currentLevel;
	int _GS;
	bool _firstLaunch;
	int _timeElapsed;
	int lastPlayedMusic;
	bool _firstLaunchLevel1;
	bool _enterDoor;
	bool _enterDoorDisplayed;
	bool _mazeFinish;
	bool _mazeFinishDisplayed;
	
	bool _levelFinish;
	bool _setEndingText;

	int _timeLevelCost;
	
};

#endif
