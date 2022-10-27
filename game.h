//=============================================================================
//
// �Q�[���N���X(game.h)
// Author : �������l
// �T�v : �Q�[���N���X�̊Ǘ����s��
//
//=============================================================================
#ifndef _GAME_H_		// ���̃}�N����`������ĂȂ�������
#define _GAME_H_		// ��d�C���N���[�h�h�~�̃}�N����`

//*****************************************************************************
// �C���N���[�h
//*****************************************************************************
#include "scene_mode.h"

//*****************************************************************************
// �O���錾
//*****************************************************************************
class CPlayer;
class CEnemyShark;
class CMesh3D;
class CScore;

//=============================================================================
// �Q�[���N���X
// Author : �������l
// �T�v : �Q�[���������s���N���X
//=============================================================================
class CGame : public CSceneMode
{
public:
	//--------------------------------------------------------------------
	// �ÓI�����o�֐�
	//--------------------------------------------------------------------
	static void SetGame(const bool bGame) { m_bGame = bGame; }		// �Q�[���̏󋵂̐ݒ�
	static CMesh3D *GetMesh() { return m_pMesh3D; }					// ���b�V���̃Q�b�^�[

	//--------------------------------------------------------------------
	// �R���X�g���N�^�ƃf�X�g���N�^
	//--------------------------------------------------------------------
	CGame();
	~CGame() override;

	//--------------------------------------------------------------------
	// �ÓI�����o�ϐ�
	//--------------------------------------------------------------------
	static CPlayer *m_pPlayer;					// �v���C���[�N���X
	static CEnemyShark *m_pEnemyShark;			// �T���G
	static CMesh3D *m_pMesh3D;					// ���b�V���N���X
	static CScore *m_pScore;					// �X�R�A�N���X
	static bool m_bGame;						// �Q�[���̏�

	//--------------------------------------------------------------------
	// �����o�֐�
	//--------------------------------------------------------------------
	HRESULT Init() override;					// ������
	void Uninit() override;						// �I��
	void Update() override;						// �X�V
	void Draw() override;						// �`��
};

#endif



