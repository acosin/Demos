#include "s3e.h"
#include "Iw2D.h"
#include "game.h"
#include "IwResManager.h"
#include "IwSound.h"
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
	IwGxInit();
	Iw2DInit();
	IwResManagerInit();
	// Init IwSound
	IwSoundInit();


#ifdef IW_BUILD_RESOURCES
	// Tell resource system how to convert WAV files
	IwGetResManager()->AddHandler(new CIwResHandlerWAV);
#endif

	// Load our Level1 resource group into the resource manager
	IwGetResManager()->LoadGroup("Level_1.group");

	// create game object
    pGame = new CGame;
	timer = (uint32)s3eTimerGetMs();
	return 1;
}

int Prepare()
{	
	// Load resources 
	CIwResGroup* Level_1Group = IwGetResManager()->GetGroupNamed("Level_1");
	IwGetResManager()->SetCurrentGroup(Level_1Group);
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
	// Shutdown IwSound
	IwSoundTerminate();
	IwResManagerTerminate();
    Iw2DTerminate();
	IwGxTerminate();
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
