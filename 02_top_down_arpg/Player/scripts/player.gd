class_name Player extends CharacterBody2D

var direction := Vector2.ZERO
var toward = Vector2.DOWN # 玩家朝向
#var move_speed := 160.0
#var state: String = "idle" # 玩家状态
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var state_machine: StateMachine = $StateMachine

func _ready() -> void:
	state_machine.Initialize(self)

func _process(delta: float) -> void:
	direction = Input.get_vector("left", "right", "up", "down")
	
func _physics_process(delta: float) -> void:
	#velocity = direction * move_speed
	#
	#if SetState() == true or SetDirection() == true:
		#UpdateAnimation()
	#
	move_and_slide()

# 设置当前状态
#func SetState() -> bool:
	#var new_state: String = "idle" if direction == Vector2.ZERO else "walk"
	#if new_state == state:
		#return false
	#state = new_state
	#return true
	
# 设置当前方向
func SetDirection() -> bool:
	var new_direction:Vector2 = toward
	
	if direction == Vector2.ZERO:
		return false
	
	if direction.y == 0:
		new_direction = Vector2.LEFT if direction.x < 0 else Vector2.RIGHT
	elif direction.x == 0:
		new_direction = Vector2.UP if direction.y < 0 else Vector2.DOWN
		
	if new_direction == toward:
		return false
	
	toward = new_direction
	return true

# 获取玩家朝向
func getToward() -> String:
	if toward == Vector2.DOWN:
		return "down"
	elif toward == Vector2.UP:
		return "up"
	elif toward == Vector2.LEFT:
		return "left"
	else:
		return "right"

# 更新动画
func UpdateAnimation( state: String ):
	animation_player.play(state + "_" + getToward())
