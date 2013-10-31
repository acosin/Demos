#ifndef GAME_H
#define GAME_H

#include "map.h"
#include "character.h"
#include "tiles.h"
#include "obstacle.h"
#include "audio.h"
#include "input.h"
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
	Tiles* _Tiles;
	Obstacle* _Obstacle;
	Audio* _Audio;
};

#endif
