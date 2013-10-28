#include "resmgr.h"

cJSON *root=new cJSON;
cJSON * ReadJsonFile(char * filename)
{
	char * jsonContent;
	s3eFile* fileHandler;
	fileHandler=s3eFileOpen(filename, "rb");
	if (fileHandler != NULL)
    {
        // Allocate buffer to be filled with the files contents
        int32 fileSize = s3eFileGetSize(fileHandler);
        jsonContent = (char*)s3eMallocBase(fileSize+1);

        // Read data from file
        if (s3eFileRead(&jsonContent[0], fileSize+1, 1, fileHandler) != 1)
        {
            // An kError has occurred, retrieve information for display
			std::cout<<s3eFileGetErrorString()<<std::endl;
        }
        else
        {
            // Data reading has been successful
            jsonContent[fileSize] = '\0';
        }
    }
    else
    {
        // Something went wrong during opening of the file
        // retrieve error for display
		std::cout<<s3eFileGetErrorString()<<std::endl;
    }
	if (fileHandler)
		s3eFileClose(fileHandler);
	root = cJSON_Parse(jsonContent);
	s3eFileFlush(fileHandler);
	return root;
}