extends Area2D

var move_speed = 100.0 # 小行星 - 移动速度
var explosion_scene = preload("res://explosion.tscn") # 爆炸场景

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position -= Vector2(move_speed * delta, 0) 
	if position.x <= -100: 
		queue_free() 
	pass


func _on_asteroid_area_entered(area):
	if area.is_in_group('player'):
		queue_free()
		
		# 创建爆炸效果
		var stage_node = get_parent()
		var explosion_instance = explosion_scene.instance() 
		explosion_instance.position = position 
		stage_node.add_child(explosion_instance)
