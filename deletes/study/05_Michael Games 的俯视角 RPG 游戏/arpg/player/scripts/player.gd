extends CharacterBody2D

var speed = 150


func _process(delta: float) -> void:
	var direction:Vector2 = Vector2.ZERO
	direction = Input.get_vector('left', 'right', 'up', 'down')
	velocity = direction * speed
	
func _physics_process(delta: float) -> void:
	move_and_slide()
