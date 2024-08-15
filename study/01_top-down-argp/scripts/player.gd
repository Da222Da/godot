extends CharacterBody2D

@export var Accelerated = 300 # 加速度
@export var Max_Speed = 200.0 # 最大速度
@export var Friction = 500 # 摩擦力

enum {
	IDLE = 0,
	WALK,
	ATTACK
}
var state = IDLE

#@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var animation_tree: AnimationTree = $AnimationTree # 引用动画树
@onready var animation_State = animation_tree.get("parameters/playback") # 关联动画树中状态机
@onready var sword_hitbox: Area2D = $HitboxMarker/SwordHitbox

# 记录混合位置
# 在闲置时，记录最后一个位置朝向；在移动时，改变。
var blend_position: Vector2 = Vector2.ZERO 

# 定义混合状态的路径集合
var blend_pos_paths = [
	"parameters/Idle/BlendSpace2D/blend_position",
	"parameters/Walk/BlendSpace2D/blend_position",
	"parameters/Attack/BlendSpace2D/blend_position"
]

# 定义动画状态的名称集合
var animTree_state_keys = [
	"Idle",
	"Walk",
	"Attack"
]

func _physics_process(delta: float) -> void:
	# 获取输入向量
	var input_vertor = Input.get_vector("move_left", "move_right", "move_top", "move_down")
	
	# 设置状态
	if state != ATTACK and input_vertor == Vector2.ZERO:
		state = IDLE
	
	if state != ATTACK and input_vertor != Vector2.ZERO:
		state = WALK
		
	if Input.is_action_just_pressed("attack"):
		state = ATTACK
	
	# 设置击退单位向量
	if input_vertor != Vector2.ZERO:
		sword_hitbox.knocknack_unit_vector = input_vertor 
		
	# 处理状态
	match state:
		IDLE:
			apply_friction(delta)
		WALK:
			blend_position = input_vertor
			apply_movement(input_vertor, delta)
		ATTACK:
			velocity = Vector2.ZERO # 初始化速度向量
		
	animate()
	move_and_slide()

# 改变动画状态
func animate() -> void:
	animation_tree.set(blend_pos_paths[state], blend_position) # 改变该节点的混合位置
	animation_State.travel(animTree_state_keys[state]) # 指示状态机前往特定节点，也就是改变动画状态
	
# 处理移动
func apply_movement(input_vertor, delta) -> void:
	velocity = velocity.move_toward(input_vertor * Max_Speed, Accelerated * delta)

# 处理摩檫力
func apply_friction(delta) -> void:
	velocity = velocity.move_toward(Vector2.ZERO, Friction * delta)

# 处理攻击动画结束
func attack_animation_finished():
	state = IDLE
