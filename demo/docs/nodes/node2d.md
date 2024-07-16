<PageHeader content="Node2D: 2D 节点的基类" />

::: tip Node2D 是什么？

所有的 2D 节点都继承自 `Node2D`。而 Node2D 本身封装了变换属性`位置、旋转、缩放和Z索引`。

:::

::: warning CanvasItem API

#### 方法

- `look_at(point: Vector2)` 旋转该节点，使其指向 point

```gdscript
extends CharacterBody2D
func _process(delta):
	# 让玩家始终看向鼠标
	look_at(get_global_mouse_position())
```

:::
