extends Area2D

@onready var ui = %UI
@onready var animation_player = $AnimationPlayer

func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		ui.add_score() # 添加分数
		# queue_free() # 删除节点
		animation_player.play("pickup")
