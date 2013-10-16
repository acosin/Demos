#include "Iw2D.h"
#include "tile.h"

Tile::Tile()
{
	m_Position=CIwFVec2(300.0f,300.0f);
}

Tile::~Tile()
{
	delete m_image;
}

void Tile::Load(char* filename)
{
	m_image=Iw2DCreateImageResource(filename);
	m_Size=CIwSVec2(m_image->GetWidth(),m_image->GetHeight());
}

void Tile::Render(CIwFVec2 mapPos)
{
	Iw2DDrawImage(m_image, CIwSVec2((iwsfixed)(m_Position.x-mapPos.x), (iwsfixed)(m_Position.y-mapPos.y)));
}

void Tile::Rotate()
{
}

void Tile::Update()
{
}