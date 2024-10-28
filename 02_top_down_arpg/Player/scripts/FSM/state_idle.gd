class_name StateIdle extends State
@onready var walk: StateWalk = $"../Walk"

# 当玩家进入该状态时，执行
func Enter() -> void:
	State.player.UpdateAnimation("idle")
	pass
	
# 当玩家退出该状态时，执行
func Exit() -> void:
	pass

# 当状态发生改变时，做一些事情，改变一下游戏过程
func Process(_delta) -> State:
	if State.player.direction != Vector2.ZERO:
		return walk
	State.player.velocity = Vector2.ZERO
	return null
#
# 当状态发生改变时，做一些事情，改变一下游戏的物理过程
func PhysicsProcess(_delta) -> State:
	return null
	
## 不同的状态下，不同的用户输入，发生的事情不同
func HandleInput(event: InputEvent) -> State:
	return null
