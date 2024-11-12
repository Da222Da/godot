extends Sprite2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	animation_player.play("explosion")

# 链接动画完成信号
func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	queue_free()
