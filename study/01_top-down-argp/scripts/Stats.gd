extends Node2D

@export var max_health:int = 3
@onready var health = max_health:
	set(val):
		health = val
		if val <= 0:
			emit_signal("no_health")

signal no_health
