extends Area2D

var player = null

# 监听玩家进入
func _on_body_entered(body: Node2D) -> void:
	player = body

# 监听玩家离开
func _on_body_exited(body: Node2D) -> void:
	player = null
	
# 是否发现玩家
func is_seek_player():
	return player != null
