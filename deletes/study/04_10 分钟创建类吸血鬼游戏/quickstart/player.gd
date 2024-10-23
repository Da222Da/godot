extends CharacterBody2D

class_name Player

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
var speed = 100
var direction = Vector2.ZERO

func _physics_process(delta: float) -> void:
	direction = Vector2(int(Input.is_key_pressed(KEY_D)) - int(Input.is_key_pressed(KEY_A)), int(Input.is_key_pressed(KEY_S)) - int(Input.is_key_pressed(KEY_W)))
	
	velocity = direction * speed 
	move_and_slide()
	
	apply_anim()
	apply_flip()
	
func play_anim(type):
	animated_sprite_2d.play(type)

func apply_anim():
	if direction == Vector2.ZERO:
		animated_sprite_2d.play("idle")
	else:
		animated_sprite_2d.play("run")

func apply_flip():
	if(Input.is_key_pressed(KEY_A)):
		animated_sprite_2d.flip_h = true
		
	if(Input.is_key_pressed(KEY_D)):
		animated_sprite_2d.flip_h = false
