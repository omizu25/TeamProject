//=============================================================================
//
// タイトルクラス(title.h)
// Author : 唐�ｱ結斗
// 概要 : タイトルクラスの管理を行う
//
//=============================================================================
#ifndef _TITLE_H_		// このマクロ定義がされてなかったら
#define _TITLE_H_		// 二重インクルード防止のマクロ定義

//*****************************************************************************
// インクルード
//*****************************************************************************
#include "scene_mode.h"

//*****************************************************************************
// 前方宣言
//*****************************************************************************
class CObject2D;

//=============================================================================
// シーンモードクラス
// Author : 唐�ｱ結斗
// 概要 : シーンモード生成を行うクラス
//=============================================================================
class CTitle : public CSceneMode
{
public:
	//--------------------------------------------------------------------
	// コンストラクタとデストラクタ
	//--------------------------------------------------------------------
	CTitle();
	~CTitle() override;

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
	void FlashObj();
	void SelectMode();

	//--------------------------------------------------------------------
	// メンバ変数
	//--------------------------------------------------------------------
	CObject2D	*m_pTitleLogo;			// タイトルロゴオブジェクト
	CObject2D	*m_pPressAny;			// プレスオブジェクト
	float		m_fCycle;				// カーブの周期
	float		m_fAddSize;				// 大きさの参照値
	int			m_nCntFrame;			// フレームカウント
	bool		m_bPressEnter;			// エンターキーを押せるか
	int			m_nNumPlayer;			// プレイヤー数
};

#endif


