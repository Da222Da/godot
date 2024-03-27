<PageHeader content="@onready 修饰符" />

使用 `@onready 修饰符` 标记过的变量会在在调用 `Node._ready()` 之前，才进行赋值。这可以确保在\_ready()函数调用之前，变量或引用已经准备好使用，避免了在节点加载时出现空引用的问题。

```gdscript
extends Node

@onready var label = get_node("Label")

func _ready():
    label.text = "Hello, World!"
```

::: danger \_ready() 是什么？

\_ready()函数是一个特殊的生命周期函数，在 Godot 中用于在节点准备好了并且所有子节点都已加载后调用。通常用于初始化节点的状态、设置初始值、连接信号等操作。这个函数是一个常用的起始点，用于在节点准备好时执行必要的初始化操作。

:::
