extends CharacterBody2D

 
@export var damage_node : PackedScene
 
func take_damage(amount):
	if damage_node != null:
		var damage = damage_node.instantiate()
		damage.find_child("Label").text = str(amount)
		damage.scale = damage.scale * 5
		damage.position = position + Vector2(0, -50)
		get_tree().current_scene.add_child(damage)
 
	print(amount)
