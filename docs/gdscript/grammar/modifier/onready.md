<PageHeader content="@onready 修饰符" />

使用 `@onready 修饰符` 标记过的语句，会在场景节点准备好的时候，才会执行。

```gdscript
extends Node

# 报错：在场景节点没有准备好之前，`$` 不会返回场景树中的节点
# var label = $Label

@onready var label = $Label

# @onready 相当于 _ready() 函数
func _ready():
    var label = $Label
```

::: danger \_ready() 函数是什么？

\_ready()函数是一个特殊的生命周期函数。

当场景树中所有的节点都加载好了的时候，Godot 引擎就会自动执行\_ready()函数。
:::
