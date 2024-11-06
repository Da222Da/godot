extends CharacterBody2D

@export var movement_speed = 50.0
@export var hp = 10
@onready var player: CharacterBody2D = get_tree().get_first_node_in_group("player")
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


func _on_hurt_box_hurt(damage: Variant) -> void:
	hp -= damage
	if hp <= 0:
		queue_free()
