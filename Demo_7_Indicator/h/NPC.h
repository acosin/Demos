#ifndef NPC_H
#define NPC_H
#include <IwArray.h>
#include "Iw2D.h"
#include "panel.h"
class NPC
{
public:
	CIwFVec2 m_Position;
	CIwSVec2 m_CollisionBox;
	int m_Index;
	CIwArray<char*> m_Dialogs;
	~NPC(){m_Dialogs.clear_optimised();}
	void Init(int index);
	void Dialog(int index_Dialog);
	Panel* m_DialogPanel;
};
#endif