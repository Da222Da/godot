<PageHeader content="is 关键词" />

在 Godot 中，is 关键字用于检查一个对象是否是特定类的实例或者是否继承自特定类。

```gdscript
class_name Player # 这里的 Player ，我们自定义的一个类名
```

```gdscript
extends Node2D

signal score

# Player 对象实例是否离开了该区域
func _on_score_area_body_exited(body):
	if body is Player:
		emit_signal("score")
```
