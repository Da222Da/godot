extends CharacterBody2D

var move_speed = 150
var direction = Vector2.ZERO
var HP = 100
var last_movement = Vector2.UP
@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer

# 冰矛攻击
const ICE_SPEAR = preload("res://Player/attack/ice_spear/ice_spear.tscn")
@onready var ice_spear_timer: Timer = %IceSpearTimer
@onready var ice_spear_attack_timer: Timer = %IceSpearAttackTimer
var ice_spear_amount = 0 # 弹夹容量
var ice_spear_baseamount = 1 # 每次发射次数
var ice_spear_attackspeed = 1.5 
var ice_spear_level = 1 # 冰矛等级

# 龙旋风攻击
const TORNADO = preload("res://Player/attack/tornado/tornado.tscn")
@onready var tornado_timer: Timer = $Attack/TornadoTimer
@onready var tornado_attack_timer: Timer = $Attack/TornadoTimer/TornadoAttackTimer
var tornado_amount = 0 # 弹夹容量
var tornado_baseamount = 1 # 每次发射次数
var tornado_attackspeed = 1.5 
var tornado_level = 1 # 等级


var enemy_close = [] # 追踪靠近的敌人

func _ready() -> void:
	attack()


@warning_ignore("unused_parameter")
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
	if tornado_level > 0:
		tornado_timer.wait_time = tornado_attackspeed
		if tornado_timer.is_stopped():
			tornado_timer.start()
	
# 动画
func set_anim():
	if direction != Vector2.ZERO:
		last_movement = direction
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
	
func _on_tornado_timer_timeout():
	tornado_amount += tornado_baseamount
	tornado_attack_timer.start()

func _on_tornado_attack_timer_timeout():
	if tornado_amount > 0:
		var tornado_attack = TORNADO.instantiate()
		print(tornado_attack)
		tornado_attack.position = position
		tornado_attack.last_movement = last_movement
		tornado_attack.level = tornado_level
		add_child(tornado_attack)
		tornado_amount -= 1
		if tornado_amount > 0:
			tornado_attack_timer.start()
		else:
			tornado_attack_timer.stop()

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
