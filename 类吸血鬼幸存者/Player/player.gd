extends CharacterBody2D

var move_speed = 150
var direction = Vector2.ZERO
var HP = 100
@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _physics_process(delta: float) -> void:
	direction = Input.get_vector("left", "right", "up", "down")
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

func _on_hurt_box_hurt(damage: Variant) -> void:
	HP -= damage
	print(HP)
