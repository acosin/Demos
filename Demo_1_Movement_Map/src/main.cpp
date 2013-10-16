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
#include "game.h"
#include "IwResManager.h"

// updates per second
#define UPS 60

// throttle frame time at 10 fps (i.e. the game will slow down rather
// than having very low frame rate)
#define MAX_UPDATES 6

CGame* pGame;
uint32 timer;


int GetUpdateFrame()
{
    return (int)(s3eTimerGetMs() / (1000/UPS));
}

// initial game
int Initial()
{
	Iw2DInit();
	IwResManagerInit();
	
	// create game object
    pGame = new CGame;
	timer = (uint32)s3eTimerGetMs();
	return 1;
}

int Prepare()
{	
	// Load resources 
	IwGetResManager()->LoadGroup("imgs.group"); 

	//loading image
	pGame->LoadRes();
	return 1;
}

bool Loop()
{
	s3eDeviceYield(0);

    // Check for user quit
    if (s3eDeviceCheckQuitRequest())
        return false;

    // Check for screen resizing/rotation
    //UpdateScreenSize();

    // Calculate the amount of time that's passed since last frame
    int delta = uint32(s3eTimerGetMs()) - timer;
    timer += delta;

    // Make sure the delta-time value is safe
    if (delta < 0)
        delta = 0;
    if (delta > 100)
        delta = 100;

	pGame->Update(delta);

    
    // render the results
    pGame->Render();

	return true;
}

int Exit()
{
	// clear up game object
    delete pGame;
	IwResManagerTerminate();
    Iw2DTerminate();
	return 0;
}

// "main" is the S3E entry point
int main()
{   //initial game
	if(!Initial())
		return 0;// error in initial(), end the game

	if(!Prepare())
		return 0;

	while(Loop()){}
	
	Exit();	

    return 0;
}
