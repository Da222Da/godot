# 如何在节点之间进行通信？ 

::: danger 思考

1. 什么是信号？
2. 如何连接信号？
3. 如何自定义信号？

::: 


在 Godot 中，`信号(Signal)`是一种用于在不同节点对象之间进行通信的机制(如下图所示)。这种机制使得对象之间的交互更加灵活和解耦。

![信号机制](/images/signal.drawio.svg)




<!-- 在 Godot 中，连接信号的方式有以下两种：

- 第一种方式，就是在节点面板中，点击信号的连接按钮。如下图：

![添加信号](/images/add_signal.png)


- 第二种方式，就是直接在代码中，使用 connect 函数来连接：

```gdscript
extends Node2D

func _on_Button_pressed():
	print("按钮被点击了")

func _ready():
	$Button.connect("pressed", _on_Button_pressed)

``` -->



<!-- 在Godot中，您可以通过创建自定义信号来扩展节点的功能。自定义信号允许节点在特定事件发生时发出信号，以便其他节点可以监听并做出响应。

要自定义信号，请按照以下步骤进行操作：

1. 在脚本中的节点类中，使用 `signal` 关键字定义信号。例如：

```gdscript
signal custom_signal
```

这会创建一个名为 `custom_signal` 的自定义信号。

2. 在适当的时机，使用 `emit_signal` 函数发出信号。例如：

```gdscript
emit_signal("custom_signal", arg1, arg2)
```

这会发出名为 `custom_signal` 的信号，并传递参数 `arg1` 和 `arg2` 。

3. 在其他节点中，使用 `connect` 函数连接到自定义信号。例如：

```gdscript
other_node.connect("custom_signal", self, "_on_custom_signal")
```

这会将当前节点连接到 `other_node` 的 `custom_signal` 信号，并在当前节点的 `_on_custom_signal` 方法中处理该信号。

4. 在当前节点的脚本中，实现处理自定义信号的方法。例如：

```gdscript
func _on_custom_signal(arg1, arg2):
    # 处理自定义信号的逻辑
```

当 `custom_signal` 信号触发时，将调用 `_on_custom_signal` 方法，并传递相应的参数。

通过自定义信号，节点可以在特定事件发生时与其他节点进行通信，以实现更灵活和可扩展的功能。 -->
