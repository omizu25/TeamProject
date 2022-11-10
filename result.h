//=============================================================================
//
// リザルトクラス(result.h)
// Author : 唐�ｱ結斗
// 概要 : リザルトクラスの管理を行う
//
//=============================================================================
#ifndef _RESULT_H_		// このマクロ定義がされてなかったら
#define _RESULT_H_		// 二重インクルード防止のマクロ定義

//*****************************************************************************
// インクルード
//*****************************************************************************
#include "scene_mode.h"
#include "application.h"

//*****************************************************************************
// 前方宣言
//*****************************************************************************
class CPlayer;
class CEnemyShark;
class CMesh3D;
class CMenu;

//=============================================================================
// リザルトクラス
// Author : 唐�ｱ結斗
// 概要 : リザルト生成を行うクラス
//=============================================================================
class CResult : public CSceneMode
{
public:
	//--------------------------------------------------------------------
	// コンストラクタとデストラクタ
	//--------------------------------------------------------------------
	CResult();
	~CResult() override;

	//--------------------------------------------------------------------
	// 静的メンバ関数
	//--------------------------------------------------------------------
	static void InitDead();				// 死亡の初期化
	static void SetDead(int numPlayer);	// 死亡の設定

	//--------------------------------------------------------------------
	// 静的メンバ変数
	//--------------------------------------------------------------------
	static CPlayer **m_pPlayer;	// プレイヤークラス
	static CMenu *m_pMenu;		// メニュークラス
	static bool m_dead[4];		// 死亡したかどうか

	//--------------------------------------------------------------------
	// メンバ関数
	//--------------------------------------------------------------------
	HRESULT Init() override;	// 初期化
	void Uninit() override;		// 終了
	void Update() override;		// 更新
	void Draw() override;		// 描画

private:
	//--------------------------------------------------------------------
	// メンバ関数
	//--------------------------------------------------------------------
	void Single();	// シングル
	void Multi();	// マルチ

	//--------------------------------------------------------------------
	// メンバ変数
	//--------------------------------------------------------------------
	CApplication::SCENE_MODE	m_nextMode;	// 次に設定するモード
	int m_time;	// 時間
	bool m_pop;	// 出現したかどうか
};

#endif




