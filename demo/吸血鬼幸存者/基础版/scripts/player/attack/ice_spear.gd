extends Area2D

var level = 1 # 等级
var speed = 100 # 速度
var damage = 5 # 伤害
var hp = 1
var knock_amount = 100 # 击退量
var attack_size = 1.0 # 攻击范围

var target = Vector2.ZERO # 目标
var angle = Vector2.ZERO # 角度

@onready var player = get_tree().get_first_node_in_group("player")

func _ready() -> void:
	angle = global_position.direction_to(target)
	rotation = angle.angle() + deg_to_rad(135) # 计算弧度
	
	match level:
		1:
			hp = 1
			speed = 100
			damage = 5
			knock_amount = 100
			attack_size = 1.0
			
func _physics_process(delta: float) -> void:
	position += angle * speed * delta

func enemy_hit(charge = 1):
	hp -= charge
	if hp <= 0:
		queue_free()


func _on_timer_timeout() -> void:
	queue_free()
