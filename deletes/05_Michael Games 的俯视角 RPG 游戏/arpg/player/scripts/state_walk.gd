class_name State_Walk extends State

@export var move_speed: float = 100.0
@onready var idle: State_Idle = $"../Idle"
	
func Enter() -> void:
	player.UpdateAnimation('walk')
	pass
	
func Exit() -> void:
	pass
	
# 帧速率函数 _process 更新时, 状态机发生了什么改变
func Process(_delta: float) -> State:
	if player.direction == Vector2.ZERO:
		return idle
		
	player.velocity = player.direction * move_speed
	
	if player.UpdateDirection():
		player.UpdateAnimation("walk")
	
	return null

# 物理帧速率函数 _physics_process 更新时, 状态机发生了什么改变
func Physics(_delta: float) -> State:
	return null
	
# 用户输入时，状态机发生了什么改变
func HandleInput(_event: InputEvent) -> State:
	return null
