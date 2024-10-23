extends Node2D

@onready var buttons: Node2D = $"."

func _ready() -> void:
	for item in buttons.get_children():
		item.button_down.connect(self._on_button_button_down.bind("按钮的名称：" + item.name))

func _on_button_button_down(text) -> void:
	print(text)
