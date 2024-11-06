class_name PlayerStateMachine extends Node


var states:Array[State] # 保存状态集合
var prev_state:State # 上一个状态
var current_state:State # 当前状态

func _ready() -> void:
	process_mode = Node.PROCESS_MODE_DISABLED # 禁用节点进程模式，也就是脚本代码不会被运行
	pass
	
# 游戏进程
func _process(delta: float) -> void:
	ChangeState(current_state.Process(delta))
	
# 物理进程
func _physics_process(delta: float) -> void:
	ChangeState(current_state.Physics(delta))

# 未被处理的事件	
func _unhandled_input(event: InputEvent) -> void:
	ChangeState( current_state.HandleInput(event))

# 初始化函数： 设置我们的状态机
func Initialize(_player:Player) -> void:
	states = [] # 将状态数组设置为空数组
	
	# 遍历状态机节点的所以子节点，如果该节点是 State 类，那么将其添加到状态集合中
	for c in get_children():
		if c is State:
			states.append(c)
	
	if states.size() > 0:
		states[0].player = _player
		ChangeState(states[0])
		process_mode = Node.PROCESS_MODE_INHERIT # 节点进程模式，与父级一致
	

# 改变状态
func ChangeState(new_state:State) -> void:
	if new_state == null || new_state == current_state:
		return 
	
	if current_state:
		current_state.Exit()
		
	prev_state = current_state
	current_state = new_state
	current_state.Enter()
