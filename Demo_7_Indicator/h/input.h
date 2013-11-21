#ifndef INPUT_H
#define INPUT_H
#include "Iw2D.h"
#include "IwGx.h"
#include "s3e.h"
#include "s3eKeyboard.h"
#include "s3ePointer.h"


extern s3ePointerState last_States;
extern s3ePointerState current_States;

void UpdateInput(int deltaTime);
CIwFVec2 GetTouches();
CIwFVec2 GetTouches(s3ePointerState state);
#endif