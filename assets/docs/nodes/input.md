<PageHeader content="Input 单例类: 用于检测和响应各种输入事件" />

Input 单例类，用于检测和响应各种输入事件，示例代码如下：

```gdscript
func _process(delta):
	if Input.is_action_just_pressed("dialogic_default_action"):
		var mouse_position = get_global_mouse_position()
		var tween = get_tree().create_tween()
		tween.tween_property($".", "position", mouse_position, 0.5)
```

::: warning Godot 相关 API

#### 继承关系：

Object > Input

#### 方法

- `is_action_pressed(action_name)` : 检测某一按钮是否被按下(长按有效)。
- `is_action_just_pressed(action_name)` : 检测某一按钮是否被按下(仅触发一次)。
- `get_axis(-a, +a)`:通过指定两个动作来获取轴的输入，一个是负的，一个是正的。
- `get_vector(-x, +x, -y, +y)`:通过指定正负 X 和 Y 轴的四个动作来获取输入向量。

:::
