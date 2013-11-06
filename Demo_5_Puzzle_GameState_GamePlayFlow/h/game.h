#ifndef GAME_H
#define GAME_H

#include "map.h"
#include "character.h"
#include "obstacle.h"
#include "music.h"
#include "SE.h"
#include "input.h"
#include "ui.h"
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
	Map* _Map;
	Character* _Character;
	Obstacle* _Obstacle;
	Music* _Music;
	SE* _SE;
	UI* _UI;
};

#endif
