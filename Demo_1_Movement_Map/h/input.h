#ifndef INPUT_H
#define INPUT_H
#include "Iw2D.h"
#include "IwGx.h"
#include "s3e.h"
#include "s3eKeyboard.h"
#include "s3ePointer.h"


extern CIwFVec2 m_TouchPos;
extern bool m_StartTouch;
void UpdateInput(int deltaTime);
CIwFVec2 GetTouches();

#endif