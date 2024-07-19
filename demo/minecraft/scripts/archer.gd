extends CharacterBody2D

@onready var timer: Timer = %Timer

func _ready() -> void:
	timer.timeout.connect(_on_timer_timeout)
	timer.start()
	
	
func _on_timer_timeout():
	var projectile_scene = preload("res://scenes/projectile.tscn")
	var new_projectile = projectile_scene.instantiate()
	new_projectile.position.y -= 10
	add_child(new_projectile)
