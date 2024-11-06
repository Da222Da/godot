extends Node2D

@export var wander_control = 32 # 控制不同小怪的游荡范围
@onready var start_position = global_position # 游荡的起始位置
@onready var target_position = global_position # 游荡的最终位置，防止游荡太远了

@onready var timer: Timer = $Timer

func update_target_position():
	var target_vector = Vector2(randf_range(-wander_control, wander_control), randf_range(-wander_control, wander_control))
	target_position = start_position + target_vector
	
func get_time_left():
	return timer.time_left
	
func set_wander_timer(duration):
	timer.start(duration)
	
func _on_timer_timeout() -> void:
	update_target_position()
