#ifndef SE_H
#define SE_H
//#include "audio.h"
#include "s3e.h"
#include "IwSound.h"
#include <IwArray.h>
class SE
{
public:
	SE(){}
	~SE(){_soundInstances.clear_optimised();_soundSpecs.clear_optimised();}
	void Stop();
	void Pause();
	void Resume();
	bool Update(bool play);
	void Play();
	void Play(int index);
	void Init();
	void AddSFX(char* filename);
	void Play(char * name);
	bool IsPlaying(int index);
	int CharCMP(char* a, char* b,int size);
	void TileRotate();
	CIwArray<CIwSoundInst*> _soundInstances;
	CIwArray<CIwSoundSpec*> _soundSpecs;
	int lastPlayed;
private:
	bool _Play;
	CIwArray<char*> filenames;
	//CIwSoundSpec* _soundSpec;
};
#endif