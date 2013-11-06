void Maze::Render(CIwFVec2 mapPos)
{

	for(int i=0;i!=10000;i++)
	{
		CIwFVec2 offset=CIwFVec2(m_TileSize*(i%100),m_TileSize*(i/100));
		
		if(m_TileIndex[i]!=0&&m_TileDir[i]!=-1)
		{
			if(m_TileDir[i]!=0)
			{
				iwangle  angle =90*m_TileDir[i];//90 degrees
				CIwSVec2 centre=CIwSVec2(iwsfixed(offset.x+(float)m_TileSize/2.0f-mapPos.x),iwsfixed(offset.y+(float)m_TileSize/2.0f-mapPos.y));
				CIwMat2D rot;
    
				rot.SetRot(IW_ANGLE_FROM_DEGREES(angle), CIwVec2(centre));

				Iw2DSetTransformMatrix(rot);
			}
			//IwGxPrintString((offset-mapPos).x+16, (offset-mapPos).y+16, "100");
			m_Tiles[m_TileIndex[i]-1].Render(m_Image,offset-mapPos);
			
			Iw2DSetTransformMatrix(CIwMat2D::g_Identity);
		}
	}
}
