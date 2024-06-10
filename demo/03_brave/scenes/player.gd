extends CharacterBody2D

const RUN_SPEED := 200.0 # 奔跑速度
const JUMP_FORCE := -320.0 # 跳跃力
const floor_acceleration = 1000 # 地面上的加速度
const art_acceleration = 10000 # 空中的加速度
var gravity: int = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer
	
func _physics_process(delta: float) -> void:
	# 受到重力的影响
	if not is_on_floor():
		velocity.y += gravity * delta
	
	# 移动控制
	var direction: int = Input.get_axis("move_left", "move_right")
	
	# 位置位置
	# move_toward() 可以营造出慢慢加速、慢慢静止的平滑效果
	var acceleration := floor_acceleration if is_on_floor() else art_acceleration
	velocity.x = move_toward(velocity.x, direction * RUN_SPEED, acceleration * delta)  # 更改位置
	
	# 方向控制
	if not is_zero_approx(direction):
		sprite_2d.flip_h = direction < 0 # 水平翻转
	
	# 跳跃控制
	if is_on_floor() and Input.is_action_just_pressed("jump"):
		velocity.y = JUMP_FORCE
		
	# 动画控制
	if is_on_floor():
		if is_zero_approx(direction) and is_zero_approx(velocity.x):
			animation_player.play("idle")
		else:
			animation_player.play("running")
	else:
		animation_player.play("jump")

	move_and_slide()
