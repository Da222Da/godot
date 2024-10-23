class_name Enemy extends CharacterBody2D

@export var Speed = 100
@export var Health = 100

func _physics_process(delta: float) -> void:
	# position.x -= delta * Speed
	velocity = Vector2(-Speed, 0)
	move_and_slide()

func take_damage(damage):
	Health -= damage
	print(Health)
	if Health <= 0:
		queue_free()
		
