class_name Player extends CharacterBody2D


var direction:Vector2 = Vector2.ZERO
var player_direction:Vector2 = Vector2.DOWN # 角色的朝向
#var move_speed: float = 150.0
#var state: String = "idle"

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var sprite: Sprite2D = $Sprite2D
@onready var state_machine: PlayerStateMachine = $StateMachine

func _ready() -> void:
	state_machine.Initialize(self)

func _process(delta: float) -> void:
	direction = Input.get_vector('left', 'right', 'up', 'down')
	
func _physics_process(delta: float) -> void:
	move_and_slide()

# 更新方向
func UpdateDirection() -> bool:
	var new_dir:Vector2 = player_direction
	if direction == Vector2.ZERO:
		return false
	
	if direction.y == 0:
		new_dir = Vector2.LEFT if direction.x < 0 else Vector2.RIGHT
	elif direction.x == 0:
		new_dir = Vector2.UP if direction.y < 0 else Vector2.DOWN
		
	if new_dir == player_direction:
		return false
	
	player_direction = new_dir
	sprite.scale.x = -1 if player_direction == Vector2.LEFT else 1 # 控制角色的反转
	
	return true

# 更新播放动画
func UpdateAnimation(state:String) -> void:
	animation_player.play(state + "_" + getPlayerDirection())

# 更新角色的动画方向
func getPlayerDirection() -> String:
	if player_direction == Vector2.DOWN:
		return 'down'
	elif player_direction == Vector2.UP:
		return "up"
	else:
		return "side"
