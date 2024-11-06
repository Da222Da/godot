extends Area2D

var level = 1
var hp = 1
var speed = 100
var damage = 5
var knockback_amount = 100 # 击退距离
var attack_size = 1.0 # 攻击规模

var target = Vector2.ZERO # 攻击目标
var angle = Vector2.ZERO # 攻击时，旋转的角度

@onready var player = get_tree().get_first_node_in_group("player")

func _ready() -> void:
	angle = global_position.direction_to(target)
	rotation = angle.angle() + deg_to_rad(135)
	
	match level:
		1:
			pass # 使用默认值
	
	var tween = create_tween()
	tween.tween_property(self, "scale", Vector2(1, 1) * attack_size, 2).set_trans(Tween.TRANS_QUINT).set_ease(Tween.EASE_OUT)
	tween.play()
			
func _physics_process(delta: float) -> void:
	position += angle * speed * delta
	
func enemy_hit(charge = 1):
	hp -= charge
	if hp <= 0:
		queue_free()

# 10s 之后，冰矛自动销毁
func _on_destroy_timer_timeout() -> void:
	pass # Replace with function body.
