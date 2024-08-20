extends AnimatedSprite2D


func _ready() -> void:
	self.connect("animation_finished", on_animation_finished)
	frame = 0
	play("effect")
	
func on_animation_finished():
	queue_free()
