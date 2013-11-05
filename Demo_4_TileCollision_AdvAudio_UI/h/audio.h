#ifndef AUDIO_H
#define AUDIO_H
#include "s3e.h"
#include "IwSound.h"

enum AudioState
{
	PLAYING,
	PAUSED,
	STOPPED
};

class Audio
{
public:

	Audio(){}
	virtual ~Audio();
	int32 AudioStopCallback(void* systemData, void* userData);
	virtual void Play();
	void Stop();
	void Pause();
	void Resume();
	bool Update(bool play);
	void Init(char* filename);
	AudioState g_Status;
	s3eBool g_MP3Supported;
	void*   g_AudioData;
	int     g_AudioSize;

private:
	bool _Play;
	char* _Filename;
	s3eFile * _FileHandle;
};
#endif