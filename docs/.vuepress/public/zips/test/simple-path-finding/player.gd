extends Area2D

var explosion_scene = preload("res://explosion.tscn") # 爆炸场景

func _on_player_area_entered(area):
	if area.is_in_group("asteroid"):
		queue_free()
		
		var stage_node = get_parent()
		var explosion_instance = explosion_scene.instance() 
		explosion_instance.position = position
		stage_node.add_child(explosion_instance)
