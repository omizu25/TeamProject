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
class CTime;
class CFollowModel;
class CObject2D;
class CObstacleManager;

//=============================================================================
// �Q�[���N���X
// Author : �������l
// �T�v : �Q�[���������s���N���X
//=============================================================================
class CGame : public CSceneMode
{
public:
	//--------------------------------------------------------------------
	// �萔��`
	//--------------------------------------------------------------------
	static const D3DXVECTOR3 CAMERA_POSV;		// ���_
	static const D3DXVECTOR3 CAMERA_POSR;		// �����_

	//--------------------------------------------------------------------
	// �ÓI�����o�֐�
	//--------------------------------------------------------------------
	static void SetGame(const bool bGame) { m_bGame = bGame; }				// �Q�[���̏󋵂̐ݒ�
	static bool GetGame() { return m_bGame; }								// �Q�[���̏󋵂̃Q�b�^�[
	static CMesh3D *GetMesh() { return m_pMesh3D; }							// ���b�V���̃Q�b�^�[
	static CTime *GetTime() { return m_pTime; }								// �^�C���̃Q�b�^�[
	static CPlayer **GetPlayer() { return m_pPlayer; }						// �v���C���[�̃Q�b�^�[
	static CFollowModel *GetCameraTarget() { return m_pCameraTarget; }		// �J�����^�[�Q�b�g�̃Q�b�^�[
	static CObstacleManager *GetObstacle() { return m_pObstacle; }			// ��Q���̃}�l�[�W���[�̃Q�b�^�[

	//--------------------------------------------------------------------
	// �R���X�g���N�^�ƃf�X�g���N�^
	//--------------------------------------------------------------------
	CGame();
	~CGame() override;

	//--------------------------------------------------------------------
	// �ÓI�����o�ϐ�
	//--------------------------------------------------------------------
	static CPlayer **m_pPlayer;					// �v���C���[�N���X
	static CEnemyShark *m_pEnemyShark;			// �T���G
	static CMesh3D *m_pMesh3D;					// ���b�V���N���X
	static CScore *m_pScore;					// �X�R�A�N���X
	static CTime *m_pTime;						// �^�C���N���X
	static CFollowModel *m_pCameraTarget;		// �J�����^�[�Q�b�g
	static CObstacleManager *m_pObstacle;		// ��Q���̃}�l�[�W���[
	static bool m_bGame;						// �Q�[���̏�

	//--------------------------------------------------------------------
	// �����o�֐�
	//--------------------------------------------------------------------
	HRESULT Init() override;					// ������
	void Uninit() override;						// �I��
	void Update() override;						// �X�V
	void Draw() override;						// �`��

	//--------------------------------------------------------------------
	// �����o�ϐ�
	//--------------------------------------------------------------------
	int m_nCntFrame;		// �t���[���J�E���g
	CObject2D *m_pTutorial;	// �`���[�g���A��
};

#endif



