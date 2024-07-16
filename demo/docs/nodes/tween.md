<PageHeader content="Tween:  用脚本来制作动画效果" />

Tween 主要用于需要将一个数值属性插值到一系列值的动画。tween 这个名字来自 in-betweening，这是一种动画技术，可以在其中指定关键帧，然后计算机会插入出现在它们之间的帧。使用 Tween 制作动画被称为补间动画。代码如下：

```gdscript
var tween = get_tree().create_tween()
tween.set_parallel(true) # 多个动画同时播放
tween.tween_property($Sprite, "modulate:a", 0, 1) # 控制节点隐形
tween.tween_property($Player/Camera2D, "zoom", Vector2(1,1), 1) # 控制相机的缩放
tween.tween_callback($Sprite.queue_free)
```
