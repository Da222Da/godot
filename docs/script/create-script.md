# 如何创建一个脚本？

```gdscript
extends Sprite2D

const MOVE_SPEED = 500
const SCREEN_WIDTH = 1152 # 屏幕宽度
const SCREEN_HEIGHT = 648 # 屏幕高度

var input_direction = Vector2() 

# 更新画面
func _process(delta):
	# 控制精灵移动
	position += (MOVE_SPEED * delta) * input_direction
	
	# 将精灵限制在屏幕中
	if position.x < 0.0:
		position.x = 0.0
	elif position.x > SCREEN_WIDTH:
		position.x = SCREEN_WIDTH
	if position.y < 0:
		position.y = 0
	elif position.y > SCREEN_HEIGHT:
		position.y = SCREEN_HEIGHT
		

# 事件处理
func _input(event):
	if event.is_action_pressed('ui_left'): # 检查键盘方向左键是否被按下
		input_direction.x = -1
	elif event.is_action_released("ui_left"): # 检查键盘方向左键是否被释放
		input_direction.x = 0 
		
	if event.is_action_pressed("ui_right"):
		input_direction.x = 1
	elif event.is_action_released("ui_right"):
		input_direction.x = 0 
		
	if event.is_action_pressed('ui_up'): 
		input_direction.y = -1
	elif event.is_action_released('ui_up'): 
		input_direction.y = 0
		
	if event.is_action_pressed('ui_down'): 
		input_direction.y = 1
	elif event.is_action_released('ui_down'): 
		input_direction.y = 0

```