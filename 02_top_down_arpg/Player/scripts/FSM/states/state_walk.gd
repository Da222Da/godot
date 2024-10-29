class_name StateWalk extends State

@export var move_speed := 150.0
@onready var idle: StateIdle = $"../Idle"

# 当玩家进入该状态时，执行
func Enter() -> void:
	State.player.UpdateAnimation("walk")
	pass
	
# 当玩家退出该状态时，执行
func Exit() -> void:
	pass

# 当状态发生改变时，做一些事情，改变一下游戏过程
func Process(_delta) -> State:
	if State.player.direction == Vector2.ZERO:
		return idle
		
	State.player.velocity = player.direction * move_speed
	
	if player.SetDirection():
		State.player.UpdateAnimation("walk")
	
	return null

# 当状态发生改变时，做一些事情，改变一下游戏的物理过程
func PhysicsProcess(_delta) -> State:
	return null
	
## 不同的状态下，不同的用户输入，发生的事情不同
func HandleInput(event: InputEvent) -> State:
	return null
