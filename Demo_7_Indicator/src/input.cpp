#include "input.h"

CIwFVec2 m_TouchPosFistTap;
CIwFVec2 m_TouchPosOnPress;
CIwFVec2 m_TouchPosLastTap;
CIwFVec2 m_TouchPosOnHover;

s3ePointerState last_States=S3E_POINTER_STATE_UP;//store last state of mouse button
s3ePointerState current_States=S3E_POINTER_STATE_UP;
void UpdateInput(int deltaTime)
{
	// if an application uses polling input the application
	// must call update once per frame
	s3ePointerUpdate();
	s3eKeyboardUpdate();
	// for example, move a red square towards any touch event...
	current_States=S3E_POINTER_STATE_UP;
	if( s3ePointerGetState(S3E_POINTER_BUTTON_SELECT) & S3E_POINTER_STATE_DOWN )
	{
		current_States=S3E_POINTER_STATE_DOWN;
		if(last_States==S3E_POINTER_STATE_DOWN||last_States==S3E_POINTER_STATE_PRESSED)
			current_States=S3E_POINTER_STATE_PRESSED;
		
		CIwFVec2 target((float)s3ePointerGetX(), (float)s3ePointerGetY());
		
		if(current_States==S3E_POINTER_STATE_DOWN)
		{
			m_TouchPosFistTap=target;
			m_TouchPosOnPress=target;
		}
		else if(current_States==S3E_POINTER_STATE_PRESSED)
		{
			m_TouchPosOnPress=target;
		}

	}
	if( s3ePointerGetState(S3E_POINTER_BUTTON_SELECT) & S3E_POINTER_STATE_UP )
	{
		current_States=S3E_POINTER_STATE_RELEASED;
		if(last_States==S3E_POINTER_STATE_RELEASED||last_States==S3E_POINTER_STATE_UP)
			current_States=S3E_POINTER_STATE_UP;

		CIwFVec2 target((float)s3ePointerGetX(), (float)s3ePointerGetY());

		if(current_States==S3E_POINTER_STATE_RELEASED)
		{
			m_TouchPosLastTap=target;
			m_TouchPosOnHover=target;
		}
		else if(current_States==S3E_POINTER_STATE_UP)
		{
			m_TouchPosOnHover=target;
		}
	}
	last_States=current_States;
}
CIwFVec2 GetTouches()
{
	return m_TouchPosOnPress;
}
CIwFVec2 GetTouches(s3ePointerState state)
{
	switch(state)
	{
	case S3E_POINTER_STATE_UP:
		return m_TouchPosOnHover;
	case S3E_POINTER_STATE_DOWN:
		return m_TouchPosFistTap;
	case S3E_POINTER_STATE_PRESSED:
		return m_TouchPosOnPress;
	case S3E_POINTER_STATE_RELEASED:
		return m_TouchPosLastTap;
	case S3E_POINTER_STATE_UNKNOWN:
		return m_TouchPosOnHover;
	}
	return m_TouchPosOnHover;
}
