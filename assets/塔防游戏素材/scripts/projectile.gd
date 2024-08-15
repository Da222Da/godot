extends Area2D

@export var Speed = 100
@export var damage = 10

func _physics_process(delta: float) -> void:
	position.x += delta * Speed


func _on_body_entered(body: Node2D) -> void:
	if body.has_method("take_damage"):
		body.take_damage(damage)
		queue_free()
