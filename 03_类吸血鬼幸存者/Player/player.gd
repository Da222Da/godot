extends CharacterBody2D

var move_speed = 150
var direction = Vector2.ZERO
var HP = 100
@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer

# 冰矛攻击
const ICE_SPEAR = preload("res://Player/attack/ice_spear.tscn")
@onready var ice_spear_timer: Timer = %IceSpearTimer
@onready var ice_spear_attack_timer: Timer = %IceSpearAttackTimer
var ice_spear_amount = 0 # 弹夹容量
var ice_spear_baseamount = 5 # 每次发射次数
var ice_spear_attackspeed = 1.5 
var ice_spear_level = 1 # 冰矛等级
var enemy_close = [] # 追踪靠近的敌人

func _ready() -> void:
	attack()


func _physics_process(delta: float) -> void:
	direction = Input.get_vector("left", "right", "up", "down")
	set_move()
	set_filp()
	set_anim()

# 攻击
func attack():
	if ice_spear_level > 0:
		ice_spear_timer.wait_time = ice_spear_attackspeed
	if ice_spear_timer.is_stopped():
		ice_spear_timer.start()
	
# 动画
func set_anim():
	if direction != Vector2.ZERO:
		animation_player.play("walk")
	else:
		animation_player.play("RESET")
	pass
	
# 角色反转
func set_filp():
	if direction.x > 0:
		sprite_2d.flip_h = true
	elif direction.x < 0:
		sprite_2d.flip_h = false
	pass

# 移动
func set_move():
	velocity = direction * move_speed
	move_and_slide()

func _on_hurt_box_hurt(damage: Variant) -> void:
	HP -= damage
	print(HP)

# 填充弹药
func _on_ice_spear_timer_timeout() -> void:
	ice_spear_amount += ice_spear_baseamount
	ice_spear_attack_timer.start()


func _on_ice_spear_attack_timer_timeout() -> void:
	if ice_spear_amount > 0:
		var ice_spear_attack = ICE_SPEAR.instantiate()
		ice_spear_attack.position = position # 记得勾选 ICE_SPEAR 场景中的 TopLevel 属性，这样冰矛在产生之后，便不会受角色移动的影响
		ice_spear_attack.target = get_random_target()
		ice_spear_attack.level = ice_spear_level
		add_child(ice_spear_attack)
		
		ice_spear_amount -= 1
		if ice_spear_amount > 0:
			ice_spear_attack_timer.start()
		else:
			ice_spear_attack_timer.stop()
	
# 获取随机目标	
func get_random_target():
	if enemy_close.size() > 0:
		return enemy_close.pick_random().global_position
	else:
		return Vector2.UP

# 敌人进入攻击检测区域
func _on_enemy_detection_area_body_entered(body: Node2D) -> void:
	if not enemy_close.has(body):
		enemy_close.append(body)

# 敌人退出攻击检测区域
func _on_enemy_detection_area_body_exited(body: Node2D) -> void:
	if enemy_close.has(body):
		enemy_close.erase(body)
