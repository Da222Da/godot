extends CharacterBody2D

@export var Accelerated = 300 # 加速度
@export var Max_Speed = 200.0 # 最大速度
@export var Friction = 500 # 摩擦力
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var animation_tree: AnimationTree = $AnimationTree
@onready var animation_State:Variant = animation_tree.get("parameters/playback")

func _physics_process(delta: float) -> void:
	var direction_x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	var direction_y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	var input_direction = Vector2(direction_x, direction_y).normalized() 
	
	if input_direction.length_squared() > 0.0:
		# 设置输入参数
		animation_tree.set("parameters/Walk/blend_position", input_direction)
		animation_tree.set("parameters/Idle/blend_position", input_direction)
		
		# 播放动画
		animation_State.travel("Walk")
		
		# 控制角色的移动
		velocity = velocity.move_toward(input_direction * Max_Speed, Accelerated * delta)
	else:
		# 播放动画
		animation_State.travel("Idle")
		velocity = velocity.move_toward(Vector2.ZERO, Friction * delta)
	
	move_and_slide()
