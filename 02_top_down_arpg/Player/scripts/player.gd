extends CharacterBody2D

var move_speed := 160.0

func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * move_speed
	
	move_and_slide()
	pass