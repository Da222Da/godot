# PackedScene 场景资源类

`PackedScene 类` 用于对场景资源本身进行的操作和检查。如下：

#### 场景1：实例化预加载的场景

```gdscript{5,8}
extends Node2D

const SCREEN_WIDTH = 320
const SCREEN_HEIGHT = 180
var asteroid = preload("res://asteroid.tscn") # 预加载

func _on_asteroid_timer_timeout():
	var asteroid_instance = asteroid.instantiate() # 实例化
	asteroid_instance.position = Vector2(SCREEN_WIDTH + 8, randf_range(16, SCREEN_WIDTH - 16))
	add_child(asteroid_instance)
```