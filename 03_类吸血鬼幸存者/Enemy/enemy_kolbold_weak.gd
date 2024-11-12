extends CharacterBody2D

@export var move_speed = 100
var direction := Vector2.ZERO
var HP = 10
var knockback = Vector2.ZERO
var knockback_recovery = 3.5 # 击退限制
@onready var player = get_tree().get_first_node_in_group("player")
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var sound_hit: AudioStreamPlayer2D = $SoundHit

var death_animation = preload("res://VFX/explosion/explosion.tscn")

signal remove_from_array(object)

func _physics_process(delta: float) -> void:
	knockback = knockback.move_toward(Vector2.ZERO, knockback_recovery)
	direction = global_position.direction_to(player.global_position)
	velocity = direction * move_speed
	velocity += knockback
	move_and_slide()
	set_filp()
	set_anim()

# 动画
func set_anim():
	if direction != Vector2.ZERO:
		animation_player.play("walk")
	else:
		animation_player.play("RESET")
	pass
	
# 角色反转
func set_filp():
	if direction.x > 0:
		sprite_2d.flip_h = true
	elif direction.x < 0:
		sprite_2d.flip_h = false
	pass

# 移动
#func set_move():
	#velocity = direction * move_speed
	#move_and_slide()


func _on_hurt_box_hurt(damge: Variant, angle, knockback_amount) -> void:
	HP -= damge
	knockback = angle * knockback_amount
	if HP <= 0:
		death()
	else:
		sound_hit.play() # 播放敌人受到打击的声音

func death():
	emit_signal("remove_from_array", self) # 从打击数组中移除
	var enemy_death = death_animation.instantiate()
	enemy_death.scale = $Sprite2D.scale
	enemy_death.global_position = global_position
	get_parent().call_deferred("add_child", enemy_death)
	queue_free()
