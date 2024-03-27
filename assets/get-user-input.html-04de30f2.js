import{_ as r,r as e,o,c as s,d as n,e as c}from"./app-546c4c18.js";const _={};function a(d,p){const t=e("PageHeader"),i=e("BilibiliTutorial");return o(),s("div",null,[n(t,{content:"获取用户输入的两种方式？"}),n(i,{"video-id":1950208333}),c(` ::: warning Title 获取用户输入的两种方式？

#### 方式 1：使用 Input 单例类

\`\`\`gdscript
extends Node2D

@onready var sprite_2d = $Sprite2D

# 在游戏每一帧执行时，利用 Input 类查询设备是否存在用户输入
func _process(delta):
	if Input.is_action_pressed("ui_select"):
		sprite_2d.scale += Vector2(0.1, 0.1)
\`\`\`

#### 方式 2：使用 \\_input 内置函数

\`\`\`gdscript
extends Node2D

@onready var sprite_2d = $Sprite2D

# 每当用户进行输入操作时，就会触发 Node._input() 内置函数
func _input(event):
	if event.is_action_pressed("ui_select"):
		sprite_2d.scale += Vector2(0.1, 0.1)
\`\`\`

::: `)])}const u=r(_,[["render",a],["__file","get-user-input.html.vue"]]);export{u as default};
