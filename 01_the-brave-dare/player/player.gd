extends CharacterBody2D

enum State {
	IDLE,
	RUNNING,
	JUMP,
	FALL
}
const ground_states = [State.IDLE, State.RUNNING] # 站在地板上的状态
var gravity := ProjectSettings.get("physics/2d/default_gravity") as float # 重力加速度
var move_speed := 160.0 # 移动速度
var floor_accelerated_speed := move_speed / 0.2 # 地面上的加速度，0.2s 之后，就可以达到 move_speed
var air_accelerated_speed := move_speed / 0.02 # 空中的加速度比地面上要快，这样空中转身要比地面上快
var jump_speed := -360 # 跳跃力
@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var coyote_timer: Timer = $CoyoteTimer
@onready var jump_request_timer: Timer = $JumpRequestTimer # 接触地面之前按跳跃键， 也就是落地前的 0.1s，预判玩家的跳跃动作，提高游戏体验。

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("jump"):
		jump_request_timer.start()
	
	#if event.is_action_released("jump"): 
		#jump_request_timer.stop()
		#if velocity.y < jump_speed / 2:
			#velocity.y = jump_speed / 2										`
	
	
func handle_physics_process(state:State, delta: float) -> void:
	match state:
		State.IDLE:
			move(delta)
		State.RUNNING:
			move(delta)
		State.JUMP:
			move(delta)
		State.FALL:
			move(delta)
	
func move(delta) -> void:
	var direction = Input.get_axis("left", "right")
	var accelerated_speed = floor_accelerated_speed if is_on_floor() else air_accelerated_speed
	velocity.x = move_toward(velocity.x, move_speed * direction, accelerated_speed * delta) # 制造加速和减速的效果
	velocity.y += gravity * delta
	
	if not is_zero_approx(direction):
		sprite_2d.flip_h = direction < 0 
	move_and_slide()
	


# 改变状态
func get_next_state(state: State) -> State:
	var direction = Input.get_axis("left", "right")
	var is_still = is_zero_approx(direction) and is_zero_approx(velocity.x) # 玩家是否处于站立不
	var should_jump = is_on_floor() and Input.is_action_pressed("jump")
	if should_jump:
		return State.JUMP
	
	match state:
		State.IDLE:
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
				return State.IDLE
			
	return state
	#var can_jump = is_on_floor() or coyote_timer.time_left > 0
	#var should_jump = can_jump and jump_request_timer.time_left > 0
	#if should_jump:
		#return State.JUMP
		#
	#var direction = Input.get_axis("left", "right")
	#var is_still = is_zero_approx(direction) and is_zero_approx(velocity.x) # 玩家是否处于站立不动的状态
	#match state:
		#State.IDLE:
			#if not is_on_floor():
				#return State.FALL
			#if not is_still:
				#return State.RUNNING
		#State.RUNNING:
			#if not is_on_floor():
				#return State.FALL
			#if is_still:
				#return State.IDLE
			#pass
		#State.JUMP:
			#if velocity.y >= 0:
				#return State.FALL
			#pass
		#State.FALL:
			#if not is_on_floor():
				#return State.IDLE if is_still else State.RUNNING
	#return state


# 退出/进入某个状态时，干什么事
# from 退出某个状态
# to 进入某个状态 
func transition_state(from: State, to: State) -> void:
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
			
	#if from not in ground_states and to in ground_states:
		#coyote_timer.stop()
		#pass
	#
	#match to:
		#State.IDLE:
			#animation_player.play("idle")
		#State.RUNNING:
			#animation_player.play("running")
		#State.JUMP:
			#animation_player.play("jump")
			#velocity.y = jump_speed
			#coyote_timer.stop()
			#jump_request_timer.stop()
		#State.FALL:
			#animation_player.play("fall")
			#if from in ground_states:
				#coyote_timer.start()


# 设置跳跃
#func set_jump():
	#can_jump = is_on_floor() or coyote_timer.time_left > 0
	#should_jump = can_jump and jump_request_timer.time_left > 0
	#if should_jump:
		#velocity.y = jump_speed
		#coyote_timer.stop()
		#jump_request_timer.stop()
		
## 设置动画
#func set_anim():
	#if is_on_floor():
		#if is_zero_approx(direction) and is_zero_approx(velocity.x):
			#animation_player.play("idle")
		#else:
			#animation_player.play("running")
	#elif velocity.y < 0:
		#animation_player.play("jump")
	#else:
		#animation_player.play("fall")
		

# 设置郊狼时间效果
# 郊狼时间效果： 物体掉落悬崖时，不会立刻下落，而是做一些动作之后，再下落。从而，增加交互效果。
# 例如：腾空跳跃
#func set_coyoto_timer():
	#if was_on_floor != is_on_floor():
		#if was_on_floor and not should_jump:
			#coyote_timer.start()
		#else:
			#coyote_timer.stop()
