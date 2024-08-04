extends CharacterBody2D

@export var movement_speed = 50.0
@onready var player: CharacterBody2D = %Player
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _physics_process(delta: float) -> void:
	movement()

func movement():
	var direction = global_position.direction_to(player.global_position)
	
	if direction == Vector2.ZERO:
		animation_player.play("idle")
	else:
		if direction.x > 0.0:
			animation_player.play("right_walk")
		else:
			animation_player.play("left_walk")
	
	velocity = direction * movement_speed
	
	move_and_slide()
