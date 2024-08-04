extends CharacterBody2D

@export var speed = 60.0
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _physics_process(delta: float) -> void:
	movement()
	
func movement():
	var input_vertor = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	if input_vertor == Vector2.ZERO:
		animation_player.play("idle")
	else:
		if input_vertor.x > 0.0:
			animation_player.play("right_walk")
		else:
			animation_player.play("left_walk")
	
	velocity = input_vertor * speed
	move_and_slide()
	
