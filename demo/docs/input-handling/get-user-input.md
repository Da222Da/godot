<PageHeader content="获取用户输入的两种方式？" />

<BilibiliTutorial :video-id="1950208333"></BilibiliTutorial>

::: warning Title 获取用户输入的两种方式？

#### 方式 1：使用 Input 单例类

```gdscript
extends Node2D

@onready var sprite_2d = $Sprite2D

# 在游戏每一帧执行时，利用 Input 类查询设备是否存在用户输入
func _process(delta):
	if Input.is_action_pressed("ui_select"):
		sprite_2d.scale += Vector2(0.1, 0.1)
```

#### 方式 2：使用 \_input 内置函数

```gdscript
extends Node2D

@onready var sprite_2d = $Sprite2D

# 每当用户进行输入操作时，就会触发 Node._input() 内置函数
func _input(event):
	if event.is_action_pressed("ui_select"):
		sprite_2d.scale += Vector2(0.1, 0.1)
```

:::
