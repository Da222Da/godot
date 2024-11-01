extends Node2D

@export var spawns: Array[SpawnInfo] = []
@onready var player = get_tree().get_first_node_in_group("player")

var time = 0

func _on_timer_timeout() -> void:
	time += 1
	var enemy_spawns = spawns
	for i in enemy_spawns:
		if time >= i.time_start and time <= i.time_end:
			if i.spawn_delay_counter < i.enemy_spawn_delay:
				i.spawn_delay_counter += 1
			else:
				i.spawn_delay_counter = 0
				var new_enemy = load(str(i.enemy.resource_path))
				print(new_enemy.instantiate())
				#var counter = 0
				#while  counter < i.enemy_number:
					#var enemy_spawn = new_enemy.instantiate()
					#enemy_spawn.global_postion = player.global_postion + Vector2(100, 100)
					#add_child(enemy_spawn)
					#counter += 1
