class_name State_Attack extends State

func Enter() -> void:
	player.UpdateAnimation('state')
	pass
	
func Exit() -> void:
	pass
	
# 帧速率函数 _process 更新时, 状态机发生了什么改变
func Process(_delta: float) -> State:
	return null

# 物理帧速率函数 _physics_process 更新时, 状态机发生了什么改变
func Physics(_delta: float) -> State:
	player.velocity = Vector2.ZERO
	return null
	
# 用户输入时，状态机发生了什么改变
func HandleInput(_event: InputEvent) -> State:
	return null
