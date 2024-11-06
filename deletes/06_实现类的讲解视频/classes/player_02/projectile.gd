extends Area2D

var direction : Vector2 = Vector2.RIGHT
var damage : float = 1
var speed : float = 300

var p0: Vector2
var p1: Vector2 
var p2: Vector2
 
var t: float = 0.0
var can_drop : bool = false
var vector_pointing_to : Vector2 = Vector2.RIGHT

func _physics_process(delta):
	if t < 3.0:
		t += 1.75 * delta
		if t > 3:
			queue_free()
 
	if can_drop:
		position = _quadratic_bezier()
	else:
		position += direction * speed * delta
 
	rotation = vector_pointing_to.angle()
	

func set_direction(flip_direction, frame, power):
	$Sprite2D.frame = frame
 
	if power != 1.25:
		can_drop = true
 
	var angle
	var length = max(power * 175, 30)
 
	if flip_direction == false:
		direction = Vector2.RIGHT
		angle = -45
	else:
		direction = Vector2.LEFT
		angle = -135
		length = - abs(length)
 
	p0 = position
	p2 = position + Vector2(length,16)
	var tilted_unit_vector = (p2-p0).normalized().rotated(deg_to_rad(angle))
	p1 = p0 + length * tilted_unit_vector

func _on_screen_exited() -> void:
	queue_free()

func _quadratic_bezier() -> Vector2:
	var time = min(t,1)
 
	var q0: Vector2 = p0.lerp(p1, time)
	var q1: Vector2 = p1.lerp(p2, time)
	vector_pointing_to = q1 - q0
 
	return q0.lerp(q1, time)

func _on_body_entered(body: Node2D) -> void:
	if body.has_method("take_damage"):
		body.take_damage(damage)
