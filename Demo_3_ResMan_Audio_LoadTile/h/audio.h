#ifndef AUDIO_H
#define AUDIO_H
#include "s3e.h"



class Audio
{
public:
	Audio(){}
	~Audio();
	void Play();
	void Stop();
	void Pause();
	void Resume();
	bool Update();
	void Init(char* filename);
private:
	char* _Filename;
	s3eFile * _FileHandle;
};
#endif