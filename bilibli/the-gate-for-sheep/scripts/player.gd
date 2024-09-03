extends CharacterBody2D

const Speed := 300.0
const Accelerated := 300.0 # 加速度
const Friction := 500.0 # 摩擦力

# 如何用脚本来控制 2D 俯视角游戏角色的移动？
func _physics_process(delta: float) -> void:
	var direction := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	if direction:
		velocity = velocity.move_toward(direction * Speed, Accelerated * delta)
	else:
		velocity = velocity.move_toward(Vector2.ZERO, Friction * delta)

	move_and_slide()
