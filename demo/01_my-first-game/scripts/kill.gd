extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		print("你死了")
		body.get_node("CollisionShape2D").queue_free()
		timer.start()
		
		Engine.time_scale = 0.5 # 将世界时间流速变慢一倍

func _on_timer_timeout() -> void:
	Engine.time_scale = 1 # 将世界时间流速设置回默认值
	get_tree().reload_current_scene()
