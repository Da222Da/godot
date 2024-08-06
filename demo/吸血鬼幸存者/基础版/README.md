# 学习素材

https://www.youtube.com/@BrannoDev/featured

# 制作大致流程

1. 创建主场景 World & 完善基本地图
	- 创建草地背景 Background
2. 创建角色场景 Player
	- 完成角色的移动处理
	- 给角色添加一个摄像机，便于探索世界
	- 给角色添加动画: idle & left_walk & right_walk
3. 创建小怪敌人场景 EnemyKolbold
	- 让小怪自动追踪主角
	- 给小怪添加动画: idle & left_walk & right_walk
4. 创建攻击系统：
	- 新增物理层名称： 1世界 & 2玩家 & 3敌人 & 4战利品
	- 新增攻击检测框 Hitbox
	- 新增伤害检测框 Hurtbox
	- 玩家场景
		- 添加添加 HP 值
		- 添加伤害检测框 Hurtbox，设置物理层为 2
	- 小怪场景
		- 添加 HP 值
		- 添加伤害检测框 Hurtbox，设置物理层为 3
		- 添加攻击检测框 Hitbox，设置物理层为 2
5. 敌人生成器 EnemySpawn
