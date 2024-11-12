# 受伤框
extends Area2D

@export_enum("Cooldown", "HitOnce", "DisableHitBox") var HurtBoxType: int = 0 # 伤害框类型
@onready var collision: CollisionShape2D = $CollisionShape2D
@onready var disable_timer: Timer = $DisableTimer # 禁用定时器

var hit_once_array = [] # 只攻击一次的数组

signal hurt(damage, angle, knockback) # 自定义受伤信号

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("attack"):
		if not area.get("damage") == null:
			match HurtBoxType:
				0: # Cooldown 冷却
					collision.call_deferred("set", "disabled", true)
					disable_timer.start()
				1: # 同一次攻击，敌人只受到一次打击 Hit
					if hit_once_array.has(area) == false:
						hit_once_array.append(area)
						if area.has_signal("remove_from_array"):
							if not area.is_connected("remove_from_array", Callable(self, "remove_from_list")):
								area.connect("remove_from_array", Callable(self, "remove_from_list"))
					else:
						return
				2: # DisableHitBox 禁止攻击
					if area.has_method("tempdisable"):
						area.tempdisable() # 执行临时禁用函数
					pass
				
			var damage = area.damage # 受到的伤害
			
			# 击退效果
			var angle = Vector2.ZERO
			var knockback = 1
			if not area.get('angle') == null:
				angle = area.angle
			
			if not area.get("knockback_amount") == null:
				knockback = area.knockback_amount
			
			emit_signal("hurt", damage, angle, knockback)
			
			# 让攻击投射物的 HP 也减少
			if area.has_method("enemy_hit"):
				area.enemy_hit(1)


func _on_disable_timer_timeout() -> void:
	collision.call_deferred("set", "disabled", false)

func remove_from_list(object):
	if hit_once_array.has(object):
		hit_once_array.erase(object)
