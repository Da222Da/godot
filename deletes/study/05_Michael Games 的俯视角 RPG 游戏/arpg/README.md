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
