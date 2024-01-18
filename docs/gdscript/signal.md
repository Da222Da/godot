<PageHeader content="信号 Signal" />

#### 什么是信号？

在 Godot 中，`信号(Signal)`是一种用于在不同节点对象之间进行通信的机制(如下图所示)。这种机制使得对象之间的交互更加灵活和解耦。

![信号机制](/images/signal.drawio.svg)

#### 如何连接 Godot 的内置信号？

在 Godot 中，连接信号的方式有以下两种：

- 第一种方式，就是在节点面板中，点击信号的连接按钮。如下图：

<!-- ![添加信号](/images/add_signal.png) -->

- 第二种方式，就是直接在代码中，使用 connect 函数来连接：

```gdscript
extends Node2D

func _on_Button_pressed():
	print("按钮被点击了")

func _ready():
	$Button.connect("pressed", _on_Button_pressed)

```

#### 如何自定义信号？

::: danger 自定义信号的关键 3 点:

1. signal 关键字定义信号
2. emit_signal 函数发送信号
3. connect() 函数监听自定义信号

:::

在 Godot 中，您可以通过创建自定义信号来扩展节点的功能。自定义信号允许节点在特定事件发生时发出信号，以便其他节点可以监听并做出响应。

要自定义信号，请按照以下步骤进行操作：

1. 在 player 脚本中，使用 `signal` 关键字定义信号，创建一个名为 `destroyed` 的自定义信号。例如：

```gdscript
# player.gd

signal destroyed
```

2. 在玩家死亡的时候，使用 `emit_signal` 函数发出信号。例如：

```gdscript
# player.gd

# 发出玩家被摧毁信号
emit_signal("destroyed")
```

3. 在其他节点中，使用 `Signal.connect()` 函数连接到自定义信号，并定义对应的处理方法。例如：

```gdscript
# main.gd

func _ready():
	$player.destroyed.connect(player_destroyed_callback) # 监听飞船被摧毁的信号

func player_destroyed_callback():
	print("玩家死亡了")
```

通过自定义信号，节点可以在特定事件发生时与其他节点进行通信，以实现更灵活和可扩展的功能。
