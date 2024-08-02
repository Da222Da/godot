extends CharacterBody2D

@export var Accelerated = 300 # 加速度
@export var Max_Speed = 200.0 # 最大速度
@export var Friction = 500 # 摩擦力

enum {
	IDLE,
	MOVE,
}
var state = IDLE

#@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var animation_tree: AnimationTree = $AnimationTree # 引用动画树
@onready var animation_State = animation_tree.get("parameters/playback") # 关联动画树中状态机

# 记录混合位置
# 在闲置时，记录最后一个位置朝向；在移动时，改变。
var blend_position: Vector2 = Vector2.ZERO 

# 定义混合状态的路径集合
var blend_pos_paths = [
	"parameters/Idle/BlendSpace2D/blend_position",
	"parameters/Walk/BlendSpace2D/blend_position"
]

# 定义动画状态的名称集合
var animTree_state_keys = [
	"Idle",
	"Walk"
]

func _physics_process(delta: float) -> void:
	move(delta)
	animate()
	#match state:
		#MOVE:
			#move_state(delta)

# 控制移动状态
func move(delta):
	# 获取输入向量
	var input_vertor = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	if input_vertor == Vector2.ZERO:
		state = IDLE
		apply_friction(delta)
	else:
		state = MOVE
		blend_position = input_vertor
		apply_movement(input_vertor, delta)
		
	move_and_slide()
	
# 处理移动
func apply_movement(input_vertor, delta) -> void:
	velocity = velocity.move_toward(input_vertor * Max_Speed, Accelerated * delta)

# 处理摩檫力
func apply_friction(delta) -> void:
	velocity = velocity.move_toward(Vector2.ZERO, Friction * delta)

# 改变动画状态
func animate() -> void:
	animation_State.travel(animTree_state_keys[state]) # 指示状态机前往特定节点，也就是改变动画状态
	animation_tree.set(blend_pos_paths[state], blend_position) # 改变该节点的混合位置
