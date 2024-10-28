# StateMachine 状态机： 用于跟踪状态的变化

class_name StateMachine extends Node

var states: Array[State] # 状态组
var prev_state: State # 上一个状态
var current_state: State # 当前状态

func _ready() -> void:
	process_mode = Node.PROCESS_MODE_DISABLED

func _process(delta: float) -> void:
	changeState(current_state.Process(delta))
	pass
	
func _physics_process(delta: float) -> void:
	changeState(current_state.PhysicsProcess(delta))
	pass
	
func _unhandled_input(event: InputEvent) -> void:
	changeState(current_state.HandleInput(event))
	pass


# 初始化状态
func Initialize( _player: Player ) -> void:
	states = []
	
	# 初始化状态组
	for c in get_children():
		if c is State: # c 节点是否继承自 State 类
			states.append(c)
	
	# 初始化默认状态
	if states.size() > 0:
		states[0].player = _player
		changeState(states[0])
		
		process_mode = Node.PROCESS_MODE_INHERIT

# 当状态改变时，做一些事情
func changeState(new_state) -> void:
	if new_state == null || new_state == current_state:
		return

	if current_state:
		current_state.Exit()
	
	prev_state = current_state
	current_state = new_state
	current_state.Enter()
		
