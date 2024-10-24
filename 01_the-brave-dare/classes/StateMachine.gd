class_name StateMachine extends Node

# 重点
# 记录当前所处的状态
var current_state: int = -1:
	set(v):
		owner.transition_state(current_state, v) # 将状态变化通知出去
		current_state = v

# 设置状态机的默认状态
func _ready() -> void:
	await owner.ready # 由于 Godot 中， _ready() 函数的调用顺序是，所有子节点先调用，然后，父节点再调用
	current_state = 0 # 0 表示枚举当中的第一个值

# 设置状态机每一帧要做的事情
func _physics_process(delta: float) -> void:
	# 确认当前处于什么状态
	while true:
		var next = owner.get_next_state(current_state) as int # get_next_state 当前状态要迁移到那个状态
		if current_state == next:
			break; # 状态不需要发生变化， break
		current_state = next
		
	owner.handle_physics_process(current_state, delta) # handle_physics_process 执行 _physics_process
