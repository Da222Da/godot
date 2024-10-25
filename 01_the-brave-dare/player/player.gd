extends CharacterBody2D

enum State {
	IDLE, # 静止
	RUNNING, # 奔跑
	JUMP, # 起跳
	FALL, # 下落
	LANDING # 着陆下蹲
}
#const ground_states = [State.IDLE, State.RUNNING, State.LANDING] # 站在地板上的状态
var default_gravity := ProjectSettings.get("physics/2d/default_gravity") as float # 重力加速度
var move_speed := 160.0 # 移动速度
var floor_accelerated_speed := move_speed / 0.2 # 地面上的加速度，0.2s 之后，就可以达到 move_speed
var air_accelerated_speed := move_speed / 0.02 # 空中的加速度比地面上要快，这样空中转身要比地面上快
var jump_speed := -360 # 跳跃力
var is_change_state_first_frame := false # 跳跃动画的第一帧不受重力的影响
@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer 
	
func handle_physics_process(state:State, delta: float) -> void:
	match state:
		State.IDLE:
			move(default_gravity, delta)
		State.RUNNING:
			move(default_gravity, delta)
		State.JUMP:
			move(0.0 if is_change_state_first_frame else default_gravity,delta)
		State.FALL:
			move(default_gravity, delta)
		State.LANDING:
			stand(delta)
	
	is_change_state_first_frame = false
	
# 移动
func move(gravity, delta) -> void:
	var direction = Input.get_axis("left", "right")
	var accelerated_speed = floor_accelerated_speed if is_on_floor() else air_accelerated_speed
	velocity.x = move_toward(velocity.x, move_speed * direction, accelerated_speed * delta) # 制造加速和减速的效果
	velocity.y += gravity * delta
	
	if not is_zero_approx(direction):
		sprite_2d.flip_h = direction < 0 
	move_and_slide()

# 站立
func stand(delta) -> void:
	var accelerated_speed = floor_accelerated_speed if is_on_floor() else air_accelerated_speed
	velocity.x = move_toward(velocity.x, 0.0, accelerated_speed * delta) # 制造加速和减速的效果
	velocity.y += default_gravity * delta
	
	move_and_slide()

# 改变状态
func change_state(state: State) -> State:
	var direction = Input.get_axis("left", "right")
	var is_still = is_zero_approx(direction) and is_zero_approx(velocity.x) # 玩家是否处于站立不
	var should_jump = is_on_floor() and Input.is_action_pressed("jump")
	if should_jump:
		return State.JUMP
	
	match state:
		State.IDLE:
			if not is_on_floor():
				return State.FALL
			if not is_still:
				return State.RUNNING
		State.RUNNING:
			if not is_on_floor():
				return State.FALL
			if is_still:
				return State.IDLE
		State.JUMP:
			if velocity.y > 0:
				return State.FALL
		State.FALL:
			if is_on_floor():
				return State.LANDING if is_still else State.RUNNING
		State.LANDING:
			if not animation_player.is_playing():
				return State.IDLE
				
	return state

# 退出/进入某个状态时，干什么事
# from 退出某个状态
# to 进入某个状态 
func handle_change_state(from: State, to: State) -> void:
	match to:
		State.IDLE:
			animation_player.play("idle")
		State.RUNNING:
			animation_player.play("running")
		State.JUMP:
			animation_player.play("jump")
			velocity.y = jump_speed
		State.FALL:
			animation_player.play("fall")
		State.LANDING:
			animation_player.play("landing")
			
	is_change_state_first_frame = true
