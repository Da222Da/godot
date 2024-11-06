# 俯视角 ARPG 游戏

> 游戏素材
> Player: https://michaelgames.itch.io/2d-action-adventure-rpg-assets

## 制作流程

1. 完成角色控制器
	- 新增场景： 主场景 World、玩家场景 Player
	- 项目设置： 
		- 窗口： w/h: 1/3、拉伸模式 Mode 设置为 viewport
		- 渲染：将游戏过滤算法改为 Nearest 
	- 新增输入映射： up & down & left & right
	- 新增 Player 脚本，用于控制玩家的上下作用移动，移动速度为 500
	
2. 给角色添加动画效果
	- 新增 AnimationPlayer 动画
		a. idle_down & idle_side & idle_up 
		a. walk_down & walk_side & walk_up 
	- 在脚本中，控制动画
	
3. 使用状态机来控制角色的移动 & 动画播放效果
