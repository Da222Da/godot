extends CharacterBody2D

@export var move_speed = 100
var direction := Vector2.ZERO
var HP = 10
@onready var player = get_tree().get_first_node_in_group("player")
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var sprite_2d: Sprite2D = $Sprite2D

func _physics_process(delta: float) -> void:
	direction = global_position.direction_to(player.global_position)
	set_move()
	set_filp()
	set_anim()

# 动画
func set_anim():
	if direction != Vector2.ZERO:
		animation_player.play("walk")
	else:
		animation_player.play("RESET")
	pass
	
# 角色反转
func set_filp():
	if direction.x > 0:
		sprite_2d.flip_h = true
	elif direction.x < 0:
		sprite_2d.flip_h = false
	pass

# 移动
func set_move():
	velocity = direction * move_speed
	move_and_slide()


func _on_hurt_box_hurt(damge: Variant) -> void:
	HP -= damge
	if HP < 0:
		queue_free()
