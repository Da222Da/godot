# 攻击框

extends Area2D

@export var damage = 1 # 表示伤害值

@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
@onready var disable_hit_box_timer: Timer = $DisableHitBoxTimer

func tempdisable():
	collision_shape_2d.call_deferred("set", "disabled", true)
	disable_hit_box_timer.start()

func _on_disable_hit_box_timer_timeout() -> void:
	collision_shape_2d.call_deferred("set", "disabled", false)
