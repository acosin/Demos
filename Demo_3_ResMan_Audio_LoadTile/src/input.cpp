#include "input.h"

CIwFVec2 m_TouchPos;
CIwFVec2 m_TouchPosOnDown;
CIwFVec2 m_TouchPosOnUp;
CIwFVec2 m_TouchPosOnPress;
bool m_StartTouch=false; 
bool m_EndTouch=false;
bool m_TargetUpdate=false;
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
		if(!m_StartTouch)
			m_TouchPosOnDown=target;
		if(s3ePointerGetState(S3E_POINTER_BUTTON_SELECT) & S3E_POINTER_STATE_PRESSED)
		{
			m_TouchPosOnPress=target;
		}
		m_StartTouch=true;
		m_EndTouch=false;
	}
	if( s3ePointerGetState(S3E_POINTER_BUTTON_SELECT) & S3E_POINTER_STATE_RELEASED )
	{
		CIwFVec2 target((float)s3ePointerGetX(), (float)s3ePointerGetY());
		m_TouchPos=target;
		m_TouchPosOnUp=target;
		m_StartTouch=false;
		m_EndTouch=true;
		m_TargetUpdate=true;
	}
}
CIwFVec2 GetTouches()
{
	return m_TouchPos;
}
CIwFVec2 GetTouches(s3ePointerState state)
{
	switch(state)
	{
	case S3E_POINTER_STATE_UP:
		return m_TouchPosOnUp;
	case S3E_POINTER_STATE_DOWN:
		return m_TouchPosOnDown;
	case S3E_POINTER_STATE_PRESSED:
		return m_TouchPos;
	case S3E_POINTER_STATE_RELEASED:
		return m_TouchPosOnUp;
	case S3E_POINTER_STATE_UNKNOWN:
		return m_TouchPos;
	}
}
