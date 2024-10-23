extends Node2D

@onready var tile_map_layer: TileMapLayer = $TileMaps/Road
@onready var camera_2d: Camera2D = $Player/Camera2D


func _ready() -> void:
	set_camera_limit()
	
func set_camera_limit():
	var used_rect := tile_map_layer.get_used_rect().grow(-1)
	var tile_size := tile_map_layer.tile_set.tile_size
	
	camera_2d.limit_bottom = used_rect.end.y * tile_size.y
	camera_2d.limit_left = used_rect.position.x * tile_size.x
	camera_2d.limit_right = used_rect.end.x * tile_size.x
	camera_2d.reset_smoothing() # 取消平滑效果
