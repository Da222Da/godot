extends Area2D


const hitEffect = preload("res://scenes/effects/hit_effect.tscn")
@export var is_open_hit_effect = true

func _on_area_entered(area: Area2D) -> void:
	if is_open_hit_effect:
		var effect = hitEffect.instantiate()
		var mainSecen = get_tree().current_scene
		effect.global_position = global_position
		mainSecen.add_child(effect)
