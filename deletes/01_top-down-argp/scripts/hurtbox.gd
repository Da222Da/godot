extends Area2D

# 攻击特效
const hitEffect = preload("res://scenes/effects/hit_effect.tscn")

@onready var timer: Timer = $Timer
signal invincibility_start # 开始无敌的信号
signal invincibility_end # 结束无敌的信号

# 无敌属性
var invincibility = false:
	set(val):
		invincibility = val
		if invincibility == true:
			emit_signal("invincibility_start")
		else:
			emit_signal("invincibility_end")
			
# 开始无敌状态
func start_invincibility(duration):
	invincibility = true
	timer.start(duration)

# 控制无敌的时间
func _on_timer_timeout() -> void:
	invincibility = false

# 生成攻击效果函数
func create_hit_effect():
	var effect = hitEffect.instantiate()
	var mainSecen = get_tree().current_scene
	effect.global_position = global_position
	mainSecen.add_child(effect)


func _on_invincibility_start() -> void:
	set_deferred("monitoring", false)
	
func _on_invincibility_end() -> void:
	set_deferred("monitoring", true)
