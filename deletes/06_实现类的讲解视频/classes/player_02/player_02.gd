extends CharacterBody2D
@onready var animation: AnimationPlayer = $AnimationPlayer
@onready var weapon: Sprite2D = $Weapon
@onready var charge: ProgressBar = $Charge
 
@export var projectile_node : PackedScene
@export var current_item: Item

var speed : float = 150
var can_move : bool = true: # 控制移动
	set(value):
		can_move = value
		if value == false:
			speed = 0
		else:
			speed = 150
 
func _physics_process(delta):
	charge.value += delta
	velocity = Input.get_vector("ui_left","ui_right","ui_up","ui_down") * speed
	move_and_slide()
 
	if can_move:
		if velocity == Vector2.ZERO:
			animation.play("idle")
		else:
			animation.play("run")
 
		if velocity.x < 0:
			$Sprite2D.flip_h = true
			$Weapon.flip_h = true
		elif velocity.x > 0:
			$Sprite2D.flip_h = false
			$Weapon.flip_h = false
 
func _input(event):
	if event.is_action_pressed("attack"): # 按下蓄力
		print("charging")
		play_animation("charging")
		charge.value = 0
		
		#charge.visible = true
	if event.is_action_released("attack"): # 松开释放
		print("shoot")
		play_animation("shoot")
		shoot_projectile()
		#charge.visible = false
		pass
 
func play_animation(type = "shoot"):
	var bool = true if type == "shoot" else false
	can_move = bool
	charge.visible = !bool
	weapon.visible = !bool
	$Weapon.texture = current_item.texture
 #
	#if current_item == null:
		#return
	#elif type == "normal":
		#weapon.play(current_item.animation)
		#animation.play(current_item.animation)
	#elif type == "charge":
		#weapon.play(current_item.charge_animation)
		#animation.play(current_item.charge_animation)

 
func shoot_projectile():
	var projectile = projectile_node.instantiate()
	projectile.position = position + Vector2(50, 0)
	projectile.scale = projectile.scale * (charge.value + 1)
	projectile.set_direction($Sprite2D.flip_h, current_item.projectile,charge.value)
	#projectile.set_direction($Sprite2D.flip_h, current_item.projectile,charge.value)
	projectile.damage = current_item.damage * charge.value
	get_tree().current_scene.add_child(projectile)
