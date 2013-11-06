#ifndef RENDER_H
#define RENDER_H

// Foward declarations
class CIw2DImage;
class CIw2DFont;

extern CIw2DImage* backgroundMap;
extern CIw2DImage* img_Character;
extern CIw2DImage* logoImage;
extern CIw2DImage* tileImage[MAX_NUM_COLOURS];
extern CIw2DImage* touchscreenButtonImage[5];
extern CIw2DFont* font;

void CleanupImages();
void SetupImages(int tileSize);
void DrawSpriteCentered(CIw2DImage* img, int x, int y, int size);
void DrawBG(CIw2DImage* img, int x0, int y0, int w, int h);
void DrawBlackBG(int x0, int y0, int w, int h);
void DrawTile(int colour, int x, int y, int size, uint32 connectFlags);

#endif