#伤害框 

extends Area2D

# 定义伤害框的类型 “Colldown 冷却” & “HitOnce 单次攻击” & “DisableHitBox 禁用攻击框”
@export_enum("Colldown", "HitOnce", "DisableHitBox") var HurtBoxType = 0
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
@onready var disable_timer: Timer = $DisableTimer

# 定义伤害信号
signal hurt(damage)

# 检测区域进入信号
func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("attack"):
		var damage = area.get("damage")
		if not damage == null:
			match HurtBoxType:
				0:
					collision_shape_2d.call_deferred("set", "disabled", true)
					disable_timer.start()
				1:
					pass
				2:
					if area.has_method("tempdisable"):
						area.tempdisable()
						
			emit_signal("hurt", damage)


func _on_disable_timer_timeout() -> void:
	collision_shape_2d.call_deferred("set", "disabled", false)
