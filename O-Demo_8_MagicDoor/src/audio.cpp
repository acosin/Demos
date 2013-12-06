#include "audio.h"
#include "stdio.h"
#include <iostream>

AudioState Audio::g_Status_RN=STOPPED;

Audio::~Audio()
{
    s3eAudioStop();
    s3eFree(g_AudioData);
}

Audio::Audio(){}
int32 Audio::AudioStopCallback(void* systemData, void* userData)
{
	g_Status_RN = STOPPED;
    return 0;
}
void Audio::Init(char* filename)
{
	g_Status_RN = STOPPED;
	g_MP3Supported = S3E_FALSE;
	_Filename=filename;
	_FileHandle = s3eFileOpen(_Filename, "rb");
	g_AudioSize = s3eFileGetSize(_FileHandle);
    g_AudioData = s3eMallocBase(g_AudioSize);

	// Reading in audio data
    s3eFileRead(g_AudioData, g_AudioSize, 1, _FileHandle);

    s3eFileClose(_FileHandle);


	g_MP3Supported = s3eAudioIsCodecSupported(S3E_AUDIO_CODEC_MP3);
	s3eAudioRegister(S3E_AUDIO_STOP, AudioStopCallback, NULL);//should using static callback function
}

bool Audio::Update(bool play)
{
	if(play)
	{
		if (!g_MP3Supported)
			return false;
		if (g_Status_RN == STOPPED)
		{
			std::cout<<"Audio Stopped"<<std::endl;
			Play();
		}
		/*
		if (g_Status == STATE_PLAYING)
			Pause();

		if (g_Status == STATE_PAUSED)
			Resume();
		*/
	}
	else
	{
		if (g_Status_RN == PLAYING)
			Stop();
	}
	return true;
}

void Audio::Resume()
{
	if (s3eAudioResume() == S3E_RESULT_SUCCESS)
		g_Status_RN = PLAYING;
}

void Audio::Play()
{
	if (s3eAudioPlayFromBuffer(g_AudioData, g_AudioSize, 1) == S3E_RESULT_SUCCESS)
            g_Status_RN = PLAYING;
}

void Audio::Stop()
{
	s3eAudioStop();
    g_Status_RN = STOPPED;
}

void Audio::Pause()
{
	if (s3eAudioPause() == S3E_RESULT_SUCCESS)
		g_Status_RN = PAUSED;
}