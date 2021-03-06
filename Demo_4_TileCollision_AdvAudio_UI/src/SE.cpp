#include "SE.h"
//#include "IwResManagerClass.h"

void SE::Init(char* filename1,char* filename2)
{
	lastPlayed=0;
	_soundSpec1 = (CIwSoundSpec*)(IwGetResManager()->GetCurrentGroup()->GetResNamed(filename1, IW_SOUND_RESTYPE_SPEC));
	_soundInstance1 = _soundSpec1->Play();
	_soundInstance1->Stop();

	_soundSpec2 = (CIwSoundSpec*)(IwGetResManager()->GetCurrentGroup()->GetResNamed(filename2, IW_SOUND_RESTYPE_SPEC));
	_soundInstance2 = _soundSpec2->Play();
	_soundInstance2->Stop();
}
void SE::Play()
{
	if(!_soundInstance1->IsPlaying()&&lastPlayed!=1)
	{
		_soundInstance1 = _soundSpec1->Play();
		lastPlayed=1;
	}
	if(!_soundInstance2->IsPlaying()&&lastPlayed!=2)
	{
		_soundInstance2 = _soundSpec2->Play();
		lastPlayed=2;
	}
}
bool SE::Update(bool play)
{
	if(play)
	{
		Play();
		/*
		if (g_Status == STATE_PLAYING)
			Pause();

		if (g_Status == STATE_PAUSED)
			Resume();
		*/
	}
	return true;
}