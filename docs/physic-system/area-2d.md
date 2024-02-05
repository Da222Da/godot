<PageHeader content="Area2D 类" />

::: tip Area2D 是干嘛的？

Area2D 类，可以创建一块用于检查`其他物理对象（或区域）`是否`进入（或退出）`的 2D 区域。

不过，需要注意的是，Area2D 实例对象**本身没有任何意义，在游戏中它也是不显示**，往往需要配合`信号 Signal`一起使用。像这样：

```gdscript
extends Node2D

func _on_area_2d_body_entered(body):
	print("玩家进入了该区域")

func _on_area_2d_body_exited(body):
	print("玩家离开了该区域")

```

:::
