#ifndef GAMESTATE_H
#define GAMESTATE_H

#define GS_Start 0
#define GS_Playing 1
#define GS_Pause 2
#define GS_Stop 3
#define GS_Restart 4


struct GameState
{
	static int m_GS;
};

#endif