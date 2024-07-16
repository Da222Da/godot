extends CharacterBody2D
class_name Player

const SPEED = 130.0 # 移动速度
const JUMP_VELOCITY = -300.0 # 跳跃速度

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity: int = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# 获取移动方向：-1 向左、 0 静止、 1 向右
	var direction := Input.get_axis("move_left", "move_right")
	
	# 控制反转
	if direction < 0:
		animated_sprite.flip_h = true
	if direction > 0:
		animated_sprite.flip_h = false
		
	# 控制动画播放
	if is_on_floor(): # 是否在地面上
		if direction == 0:
			animated_sprite.play("idle")
		else:
			animated_sprite.play("run")
	else:
		animated_sprite.play("jump")
	
	if direction: # -1 || 1
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
