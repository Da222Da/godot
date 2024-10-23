extends CharacterBody2D

var gravity := ProjectSettings.get("physics/2d/default_gravity") as float # 重力加速度
var move_speed = 150.0 # 移动速度
var jump_speed = -400 # 跳跃力
var direction = Vector2.ZERO # 方向
@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _process(delta: float) -> void:
	direction = Input.get_axis("left", "right")
	velocity.x = move_speed * direction
	velocity.y += gravity * delta
	
	set_jump()
	set_anim()
	set_flip()
	
	

func _physics_process(delta: float) -> void:
	move_and_slide()
	
# 设置跳跃
func set_jump():
	if is_on_floor() and Input.is_action_just_pressed("jump"):
		velocity.y = jump_speed
		
# 设置动画
func set_anim():
	if is_on_floor():
		if is_zero_approx(direction):
			animation_player.play("idle")
		else:
			animation_player.play("running")
	else:
		animation_player.play("jump")
		
# 设置翻转
func set_flip():
	if not is_zero_approx(direction):
		sprite_2d.flip_h = direction < 0 
	pass
