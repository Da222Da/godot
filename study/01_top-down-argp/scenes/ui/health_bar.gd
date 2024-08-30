extends Node2D

@export var stats:Stats
@onready var label: Label = $Label
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var texture_progress_bar: TextureProgressBar = $TextureProgressBar

var oldHealth # 记录上一次血量，用于计算伤害插值

func _ready() -> void:
	label.visible = false
	stats.connect("health_change", on_health_change)
	
	oldHealth = stats.health 


func on_health_change(health):
	var percentage = float(health) / float(stats.max_health)
	texture_progress_bar.value = percentage
	var hurtCharge = health - oldHealth # 伤害插值
	
	if(hurtCharge != 0):
		label.text = str(hurtCharge)
		label.visible = true
		animation_player.play("Hurt")
		
		oldHealth = health
