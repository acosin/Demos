#include "SE.h"
//#include "IwResManagerClass.h"

void SE::Init()
{
	lastPlayed=-1;
}
void SE::AddSFX(char* filename)
{
	_soundSpecs.append((CIwSoundSpec*)(IwGetResManager()->GetCurrentGroup()->GetResNamed(filename, IW_SOUND_RESTYPE_SPEC)));
	_soundInstances.append(_soundSpecs.back()->Play());
	_soundInstances.back()->Stop();
}
void SE::Play()
{
	if(!IsPlaying(0)&&lastPlayed!=0)
	{
		Play(0);
	}
	if(!IsPlaying(1)&&lastPlayed!=1)
	{
		Play(1);
	}
}
bool SE::IsPlaying(int index)
{
	return _soundInstances[index]->IsPlaying();
}
int SE::CharCMP(char* a, char* b,int size)
{
	int index=0;
	while(index<size)
	{
		if(a[index]!=b[index])
			return 0;
		index++;
	}
	return 1;
}
void SE::Play(char * name)
{
	int ind=filenames.find(name);
	if(ind>0)
	{
		Play(ind);
	}
}
void SE::Play(int index)
{
	IwGetSoundManager()->StopSoundSpec(_soundSpecs[index]);
	_soundInstances[index] = _soundSpecs[index]->Play();
	lastPlayed=index;
}
void SE::TileRotate()
{
	if(!_soundInstances[2]->IsPlaying())
	{
		Play(2);
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