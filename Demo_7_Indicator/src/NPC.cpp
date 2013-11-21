#include "NPC.h"

void NPC::Init(int index)
{
	m_DialogPanel=new Panel;
	m_DialogPanel->Load();

	m_DialogPanel->SetBG(CIwSVec2(100,Iw2DGetSurfaceHeight()-200),CIwSVec2(Iw2DGetSurfaceWidth()-200,150),0x88888888);
	m_DialogPanel->SetText(m_Dialogs[0],CIwSVec2(110,Iw2DGetSurfaceHeight()-180),2,0x00008800);
	m_Index=index;
}
void NPC::Dialog(int index_Dialog)
{
	m_DialogPanel->isDisplay=true;
	m_DialogPanel->SetText(m_Dialogs[index_Dialog]);
	m_DialogPanel->Render();
}