extends Node2D

@export var enemy_spawns:Array[EnemySpawnInfo] = []
@onready var player: CharacterBody2D = get_tree().get_first_node_in_group("player")

var time = 0


func _on_timer_timeout() -> void:
	time += 1
	for item in enemy_spawns:
		if time >= item.time_start and time <= item.time_end:
			# 延迟中
			if item.spawn_delay_counter < item.enemy_spawn_delay:
				item.spawn_delay_counter += 1 
			else:
				item.spawn_delay_counter = 0
				var new_enemy = load(str(item.enemy.resource_path)) 
				var counter = 0
				while counter < item.enemy_number:
					var enemy_spawn = new_enemy.instantiate() # 示例化敌人
					enemy_spawn.global_position = get_random_position()
					add_child(enemy_spawn)
					counter += 1
					
func get_random_position():
	var vpr = get_viewport_rect().size * randf_range(1.1, 1.4)
	var top_left = Vector2(player.global_position.x - vpr.x/2, player.global_position.y - vpr.y/2)
	var top_right = Vector2(player.global_position.x + vpr.x/2, player.global_position.y - vpr.y/2)
	var bottom_left = Vector2(player.global_position.x - vpr.x/2, player.global_position.y + vpr.y/2)
	var bottom_right = Vector2(player.global_position.x + vpr.x/2, player.global_position.y + vpr.y/2)
	
	# 随机边
	# pick_random() 从数组中随机取一个值
	var position_side = ['up', 'down', 'right', 'left'].pick_random()
	
	# 初始化生成临界点
	var spawn_pos1 = Vector2.ZERO
	var spawn_pos2 = Vector2.ZERO
	
	match position_side:
		"up":
			spawn_pos1 = top_left
			spawn_pos2 = top_right
		"down":
			spawn_pos1 = bottom_left
			spawn_pos2 = bottom_right
		"right":
			spawn_pos1 = top_right
			spawn_pos2 = bottom_right
		"left":
			spawn_pos1 = top_left
			spawn_pos2 = bottom_left

	var x = randf_range(spawn_pos1.x, spawn_pos2.x)
	var y = randf_range(spawn_pos1.y, spawn_pos2.y)
	
	return Vector2(x, y)
