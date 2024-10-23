extends CharacterBody2D

func _physics_process(delta: float) -> void:
	velocity = (get_parent().get_node("Player").position - position).normalized() * 50
	move_and_slide()


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Player:
		body.visible = false
		body.get_node("CollisionShape2D").disabled = true
