# 如何连接信号？

在 Godot 中，连接信号的方式有以下两种：

- 第一种方式，就是在节点面板中，点击信号的连接按钮。如下图：

![添加信号](/images/add_signal.png)


- 第二种方式，就是直接在代码中，使用 connect 函数来连接：

```gdscript
extends Node2D

func _on_Button_pressed():
	print("按钮被点击了")

func _ready():
	$Button.connect("pressed", _on_Button_pressed)

```
