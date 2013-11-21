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
private:
	CIwArray<Map*> _MapLevel;
	Map* currentMap;
	Character* _Character;
	Music* _Music;
	SE* _SE;
	UI* _UI;
	
	int _currentLevel;
	int _GS;
};

#endif
