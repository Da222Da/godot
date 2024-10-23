<PageHeader content="如何切换场景，并添加过渡效果？" />

我们可以直接借助 `SceneTree.change_scene_to_file()` 或 `SceneTree.change_scene_to_packed()`，在场景之间进行切换：

```gdscript
func _on_house_body_entered(body):
    # 过渡效果
	var tween = create_tween()
	tween.tween_property($Player, "move_speed", 0, 0.5)

    # 切换场景
	get_tree().change_scene_to_file("res://scenes/level_in.tscn")
```

```gdscript
var scene = preload("res://scenes/level_in.tscn")
func _on_house_body_entered(body):
    # 过渡效果
	var tween = create_tween()
	tween.tween_property($Player, "move_speed", 0, 0.5)

    # 切换场景
	get_tree().change_scene_to_packed(scene)
```
