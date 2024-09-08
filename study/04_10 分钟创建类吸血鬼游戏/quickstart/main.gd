extends Node2D

@onready var timer: Timer = $Timer

func _on_timer_timeout() -> void:
	Spawn()
	timer.start()

func Spawn():
	var enemy = load("res://enemy.tscn").instantiate()
	enemy.position = get_node("Player").position + Vector2(1000, 0).rotated(randf_range(0, 2 * PI))
	add_child(enemy)
