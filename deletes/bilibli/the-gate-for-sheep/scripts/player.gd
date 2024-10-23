extends CharacterBody2D

const Max_Speed := 300.0 # 最大速度
const Accelerated := 300.0 # 加速度
const Friction := 500.0 # 摩擦力

func _physics_process(delta: float) -> void:
	var direction := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	if direction == Vector2.ZERO:
		velocity = velocity.move_toward(direction * Max_Speed, Accelerated * delta)
	else:
		velocity = velocity.move_toward(Vector2.ZERO, Friction * delta)

	move_and_slide()
