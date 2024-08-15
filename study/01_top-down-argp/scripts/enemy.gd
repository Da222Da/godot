extends CharacterBody2D

var knocknack_force = 100 # 击退力
var knocknack_friction_force = 200 # 击退时受到的摩擦力

func _physics_process(delta: float) -> void:
	velocity = velocity.move_toward(Vector2.ZERO, knocknack_friction_force * delta)
	move_and_slide()

func _on_hurtbox_area_entered(area: Area2D) -> void:
	# queue_free()
	# 击退向量
	if area.knocknack_unit_vector:
		velocity = area.knocknack_unit_vector * knocknack_force
