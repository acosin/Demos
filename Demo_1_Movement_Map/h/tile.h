#ifndef TILE_H
#define TILE_H


class Tile
{
public:
	CIwFVec2 m_Position; // position for tile

	Tile();
	~Tile();
	void Load(char* filename);
	void Render(CIwFVec2 mapPos);
	void Rotate();
	void Update();
	
private:
	CIw2DImage* m_image;
	CIwSVec2 m_Size; // character size
};

#endif