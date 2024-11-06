extends Node2D
class_name Stats

signal no_health
signal health_change(value)

@export var max_health:int = 3
@onready var health = max_health:
	set(val):
		health = val
		emit_signal("health_change", health)
		if val <= 0:
			emit_signal("no_health")
