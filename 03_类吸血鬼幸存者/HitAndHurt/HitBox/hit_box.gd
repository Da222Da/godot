extends Area2D

var damage = 1 # 伤害值
@onready var disableTimer: Timer = $DisableHitBoxTimer
@onready var collision: CollisionShape2D = $CollisionShape2D

# 临时禁用攻击框
func tempDisable():
	collision.call_deferred("set", "disabled", true)
	disableTimer.start()


func _on_disable_hit_box_timer_timeout() -> void:
	collision.call_deferred("set", "disabled", false)
