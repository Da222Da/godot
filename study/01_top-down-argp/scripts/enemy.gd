extends CharacterBody2D

var knocknack_force = 100 # 击退力
var friction_force = 200 # 受到的摩擦力
@export var accelerated_speed = 300 # 加速度
@export var max_speed = 50 # 最大速度

var EnemyDeathEffect = preload("res://scenes/effects/death_effect.tscn")
@onready var stats: Node2D = $Stats
@onready var play_detection_zone: Area2D = $PlayDetectionZone
@onready var sprite_2d: AnimatedSprite2D = $Sprite2D


enum {
	IDLE, # 静止不动
	WANDER, # 游荡
	CHASE # 追逐
}
var state = IDLE # 敌人状态

func _physics_process(delta: float) -> void:
	match state:
		IDLE:
			velocity = velocity.move_toward(Vector2.ZERO, friction_force * delta)
			seek_player()
		WANDER:
			pass
		CHASE:
			var player = play_detection_zone.player
			if player != null:
				var direction = (player.global_position - global_position).normalized() 
				velocity = velocity.move_toward(direction * max_speed, friction_force * delta)
			else:
				state = IDLE
			
			# 控制敌人调头
			sprite_2d.flip_h = velocity.x < 0
			
	move_and_slide()

# 寻找玩家
func seek_player():
	if play_detection_zone.is_seek_player():
		state = CHASE

func _on_hurtbox_area_entered(area: Area2D) -> void:
	stats.health -= area.damage
	
	# 击退向量
	if area.knocknack_unit_vector:
		#
		velocity = area.knocknack_unit_vector * knocknack_force


func _on_stats_no_health() -> void:
	queue_free()
	
	var enemyDeathEffect = EnemyDeathEffect.instantiate()
	enemyDeathEffect.global_position = global_position
	get_parent().add_child(enemyDeathEffect)
