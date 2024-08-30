extends HBoxContainer

#@onready var label: Label = $Label
@onready var health_bar: TextureProgressBar = $HealthBar
@onready var health_bar_red: TextureProgressBar = $HealthBar/HealthBarRed

# 最大血量
var max_hearts = 1:
	set(val):
		max_hearts = max(val, 1)

var hearts = 1 # 血量

func _ready() -> void:
	max_hearts = PlayerStats.max_health
	hearts = PlayerStats.health
	PlayerStats.connect("health_change", update_health)
	
func update_health(val):
	hearts = clamp(val, 0, max_hearts)
	
	# 血量显示动画
	var percentage = float(PlayerStats.health) / float(PlayerStats.max_health)
	health_bar.value = percentage
	create_tween().tween_property(health_bar_red, "value", percentage, 0.3)
