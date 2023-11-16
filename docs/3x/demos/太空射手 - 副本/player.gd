extends Area2D

const MOVE_SPEED = 150.0 # 移动速度
const SCREEN_WIDTH = 320 # 设置屏幕宽度
const SCREEN_HEIGHT = 180 # 设置屏幕高度

# 启用了 _process 函数之后，它会在每一帧更新时被调用
# 在Godot中，_process函数的delta参数代表了上一帧和当前帧之间的时间间隔，以秒为单位。开发者可以使用delta来实现基于时间的逻辑更新，确保游戏对象的行为在不同帧之间保持一致。
func _process(delta):
	var input_dir = Vector2() # 方向向量
	if Input.is_key_pressed(KEY_UP):
		input_dir.y -= 1.0
	if Input.is_key_pressed(KEY_DOWN):
		input_dir.y += 1.0
	if Input.is_key_pressed(KEY_LEFT):
		input_dir.x -= 1.0
	if Input.is_key_pressed(KEY_RIGHT):
		input_dir.x += 1.0
	
	# 根据键盘输入的方向和设定的速度进行移动
	position += (delta * MOVE_SPEED) * input_dir
	
	# 将 player 限制在屏幕中
	if position.x < 0.0:
		position.x = 0.0
	elif position.x > SCREEN_WIDTH:
		position.x = SCREEN_WIDTH
	if position.y < 0.0:
		position.y = 0.0
	elif position.y > SCREEN_HEIGHT:
		position.y = SCREEN_HEIGHT
	
