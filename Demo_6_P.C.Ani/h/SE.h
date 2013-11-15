#ifndef SE_H
#define SE_H
//#include "audio.h"
#include "s3e.h"
#include "IwSound.h"
class SE
{
public:
	SE(){}
	~SE(){delete _soundInstance1;delete _soundInstance2;delete _soundInstance3;delete _soundSpec1;delete _soundSpec2;delete _soundSpec3;}
	void Stop();
	void Pause();
	void Resume();
	bool Update(bool play);
	void Play();
	void Init(char* filename1,char* filename2,char* filename3);
	void TileRotate();
	CIwSoundInst* _soundInstance1;
	CIwSoundInst* _soundInstance2;
	CIwSoundInst* _soundInstance3;
	CIwSoundSpec* _soundSpec1;
	CIwSoundSpec* _soundSpec2;
	CIwSoundSpec* _soundSpec3;
	int lastPlayed;
private:
	bool _Play;
	//CIwSoundSpec* _soundSpec;
};
#endif