extends CharacterBody2D

@export var speed = 60.0
@export var hp = 80

# 攻击
# 冰锥攻击
var iceSpear = {
	"scenes": preload("res://scenes/player/attack/ice_spear.tscn"),
	"base_amount": 1, # 一次性生成冰锥的数量
	"amount": 0, # 弹夹中冰锥的数量
	"attack_speed": 1.5, # 攻击速度
	"level": 1 # 等级
}
@onready var ice_spear_timer: Timer = %IceSpearTimer
@onready var ice_spear_attack_timer: Timer = %IceSpearAttackTimer


# 捕获接近的敌人
var enemy_close = []

# 动画
@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _ready() -> void:
	attack()

func _physics_process(delta: float) -> void:
	movement()
	
# 处理移动
func movement():
	var input_vertor = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	if input_vertor == Vector2.ZERO:
		animation_player.play("idle")
	else:
		if input_vertor.x > 0.0:
			animation_player.play("right_walk")
		else:
			animation_player.play("left_walk")
	
	velocity = input_vertor * speed
	move_and_slide()

# 处理攻击
func attack():
	if iceSpear.level > 0:
		ice_spear_timer.wait_time = iceSpear.attack_speed
		if ice_spear_timer.is_stopped():
			ice_spear_timer.start()

func _on_hurt_box_hurt(damage: Variant) -> void:
	hp -= damage
	print(hp)

# 冰锥装弹时间 1.5s
func _on_ice_spear_timer_timeout() -> void:
	iceSpear.amount += iceSpear.base_amount
	ice_spear_attack_timer.start()

# 冰锥攻击时间 0.075s
func _on_ice_spear_attack_timer_timeout() -> void:
	if iceSpear.amount > 0:
		var icespear_attack = iceSpear.scenes.instantiate()
		icespear_attack.position = position
		icespear_attack.target = get_random_target()
		icespear_attack.level = iceSpear.level
		add_child(icespear_attack)
		iceSpear.amount -= 1 # 弹夹数减 1
		if iceSpear.amount > 0:
			ice_spear_attack_timer.start()
		else:
			ice_spear_attack_timer.stop()

func get_random_target():
	if enemy_close.size() > 0:
		return enemy_close.pick_random().global_position
	else:
		return Vector2.UP

# 监听敌人进入攻击区域
func _on_emeny_detection_area_body_entered(body: Node2D) -> void:
	if not enemy_close.has(body):
		enemy_close.append(body)

# 监听敌人离开攻击区域
func _on_emeny_detection_area_body_exited(body: Node2D) -> void:
	if enemy_close.has(body):
		enemy_close.erase(body)
