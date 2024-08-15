extends Node2D

@onready var tile_map: TileMap = $TileMap
@onready var camera_2d: Camera2D = $Player/Camera2D

func _ready() -> void:
	var used_reac := tile_map.get_used_rect()
	var tile_size := tile_map.tile_set.tile_size
	camera_2d.limit_top = used_reac.position.y * tile_size.y
	camera_2d.limit_bottom = used_reac.end.y * tile_size.y
	camera_2d.limit_left =  used_reac.position.x * tile_size.x
	camera_2d.limit_right = used_reac.end.x * tile_size.x
	camera_2d.reset_smoothing()
