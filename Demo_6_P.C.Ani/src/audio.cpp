#include "audio.h"

int32 Audio::AudioStopCallback(void* systemData, void* userData)
{
    g_Status = STOPPED;
    return 0;
}

Audio::~Audio()
{
    s3eAudioStop();
    s3eFree(g_AudioData);
}


void Audio::Init(char* filename)
{
	g_Status = STOPPED;
	g_MP3Supported = S3E_FALSE;
	_Filename=filename;
	_FileHandle = s3eFileOpen(_Filename, "rb");
	g_AudioSize = s3eFileGetSize(_FileHandle);
    g_AudioData = s3eMallocBase(g_AudioSize);

	// Reading in audio data
    s3eFileRead(g_AudioData, g_AudioSize, 1, _FileHandle);

    s3eFileClose(_FileHandle);


	g_MP3Supported = s3eAudioIsCodecSupported(S3E_AUDIO_CODEC_MP3);

}

bool Audio::Update(bool play)
{
	if(play)
	{
		if (!g_MP3Supported)
			return false;
		if (g_Status == STOPPED)
			Play();
		/*
		if (g_Status == STATE_PLAYING)
			Pause();

		if (g_Status == STATE_PAUSED)
			Resume();
		*/
	}
	else
	{
		if (g_Status == PLAYING)
			Stop();
	}
	return true;
}

void Audio::Resume()
{
	if (s3eAudioResume() == S3E_RESULT_SUCCESS)
		g_Status = PLAYING;
}

void Audio::Play()
{
	if (s3eAudioPlayFromBuffer(g_AudioData, g_AudioSize, 0) == S3E_RESULT_SUCCESS)
            g_Status = PLAYING;
}

void Audio::Stop()
{
	s3eAudioStop();
    g_Status = STOPPED;
}

void Audio::Pause()
{
	if (s3eAudioPause() == S3E_RESULT_SUCCESS)
		g_Status = PAUSED;
}