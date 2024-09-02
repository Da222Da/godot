extends CharacterBody2D

@export var animation_tree: AnimationTree # 指定动画树
@onready var sprite_2d: Sprite2D = $Sprite2D

@onready var state_machine: AnimationNodeStateMachinePlayback = animation_tree.get("parameters/playback")
@onready var move_state_machine: AnimationNodeStateMachinePlayback = animation_tree.get("parameters/Movement/playback")
@onready var jump_state_machine: AnimationNodeStateMachinePlayback = animation_tree.get("parameters/Jump/playback")
@onready var attack_state_machine: AnimationNodeStateMachinePlayback = animation_tree.get("parameters/Attack/playback")

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var speed:float = 400
var direction: float
var counter: int = 0
var delay: float

var on_floor:bool:
	set(value):
		if value == on_floor:
			if value == true:
				filp_sprite()
			return
		on_floor = value
		
		if value == true:
			state_machine.travel("Movement")
		else:
			state_machine.travel("Jump")

func _physics_process(delta: float) -> void:
	if delay > 0:
		delay -= delta
	direction = Input.get_axis("ui_left", "ui_right")
	velocity.x = direction * speed
	velocity.y += gravity * delta
	
	move_and_slide()
	on_floor = is_on_floor()
	if velocity == Vector2.ZERO:
		set_move(false)
	else:
		set_move(true)
		
	
	controls()
	
func controls():
	if Input.is_action_just_pressed("jump") and is_on_floor():
		state_machine.travel("Jump")
		velocity.y = -500
		
	if Input.is_action_just_pressed("roll") and is_on_floor():
		move_state_machine.travel("roll")
		set_speed(500.0)
		
	if Input.is_action_just_pressed("attack_right") and is_on_floor():
		play_attack("3")
	
	if Input.is_action_just_pressed("attack_left") and delay <= 0:
		delay = 0.75
		$RESET.start()
		if is_on_floor():
			counter += 1
			print(counter, counter % 3 == 0)
			attack((counter % 3 == 0))
		
		if not is_on_floor():
			jump_state_machine.travel("jump_attack")
			
	if Input.is_action_just_pressed("attack_special") and is_on_floor():
		play_attack("attack_special")
		#state_machine.travel("GroupAttack/attack1")
		
func play_attack(type:String):
	if(type == "attack_special"):
		attack_state_machine.travel(type)
	else:
		attack_state_machine.travel("attack" + type)
	state_machine.travel("Attack")
	set_speed(0)

func attack(is_third):
	if is_third:
		play_attack("2")
		counter = 0
		return
	play_attack("1")

func set_speed(value:float = 300):
	speed = value

func set_move(value: bool):
	animation_tree.set("parameters/Movement/conditions/is_run", value)
	animation_tree.set("parameters/Movement/conditions/is_stopped",not value)
	

func filp_sprite():
	if direction < 0:
		sprite_2d.flip_h = true
	elif direction > 0:
		sprite_2d.flip_h = false


func _on_reset_timeout() -> void:
	counter = 0
