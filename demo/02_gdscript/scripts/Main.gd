extends Node

signal my_signal(msg) # 自定义信号

var i = 0

func _ready() -> void:
	my_signal.connect(_on_my_signal)

func _on_timer_timeout() -> void:
	i += 1
	my_signal.emit("信息" + str(i)) # 发射信号


func _on_my_signal(msg) -> void:
	print(msg)
	pass # Replace with function body.
