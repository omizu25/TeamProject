//=============================================================================
//
// 障害物クラス (obstacle.h)
// Author : 香月瑞輝
//
//=============================================================================
#ifndef _OBSTACLE_H_	// このマクロ定義がされてなかったら
#define _OBSTACLE_H_	// 二重インクルード防止のマクロ定義

//*****************************************************************************
// インクルード
//*****************************************************************************
#include "model_obj.h"
#include "main.h"

//=============================================================================
// 障害物クラス
//=============================================================================
class CObstacle : public CModelObj
{
public:
	//--------------------------------------------------------------------
	// 静的メンバ関数
	//--------------------------------------------------------------------
	static void Pop();	// 出現
	static CObstacle* Create(float posX);	// 障害物の生成

	//--------------------------------------------------------------------
	// 静的メンバ変数
	//--------------------------------------------------------------------
	static int m_time;

	//--------------------------------------------------------------------
	// コンストラクタとデストラクタ
	//--------------------------------------------------------------------
	CObstacle();
	~CObstacle();

	//--------------------------------------------------------------------
	// メンバ関数
	//--------------------------------------------------------------------
	HRESULT Init() override;	// 初期化
	void Uninit() override;		// 終了
	void Update() override;		// 更新
	void Draw() override;		// 描画

private:
	//--------------------------------------------------------------------
	// メンバ変数
	//--------------------------------------------------------------------
	int m_life;	// 寿命
};

#endif
