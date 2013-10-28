#ifndef RESMGR_H
#define RESMGR_H

#include <stdlib.h>
#include <iostream>
#include "s3ePointer.h"
#include "s3eFile.h"
#include "cJSON.h"
#include "IwGx.h"

extern cJSON *root;
cJSON * ReadJsonFile(char *);


#endif