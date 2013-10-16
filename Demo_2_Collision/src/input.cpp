#include "input.h"

CIwFVec2 m_TouchPos;
bool m_StartTouch=false; 
void UpdateInput(int deltaTime)
{
	// if an application uses polling input the application
	// must call update once per frame
	s3ePointerUpdate();
	s3eKeyboardUpdate();
	// for example, move a red square towards any touch event...
	if( s3ePointerGetState(S3E_POINTER_BUTTON_SELECT) & S3E_POINTER_STATE_DOWN )
	{
		CIwFVec2 target((float)s3ePointerGetX(), (float)s3ePointerGetY());
		m_TouchPos=target; 
		m_StartTouch=true;
	}
	if( s3ePointerGetState(S3E_POINTER_BUTTON_SELECT) & S3E_POINTER_STATE_UP )
	{
		m_StartTouch=false;
	}
	if( s3ePointerGetState(S3E_POINTER_BUTTON_SELECT) & S3E_POINTER_STATE_RELEASED )
	{
		m_StartTouch=false;
	}
}
CIwFVec2 GetTouches()
{
	return m_TouchPos;
}