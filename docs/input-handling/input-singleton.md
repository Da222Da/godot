# Input 单例类

在Godot游戏引擎中，Input Singleton是一个全局对象，用于处理输入事件。它是一个预定义的单例对象，所以，你可以通过 `Input` 类直接访问该对象上的属性和方法。

Input Singleton提供了许多功能，用于检测和响应各种输入事件，包括键盘、鼠标、触摸屏、游戏手柄等。您可以使用Input Singleton来检测按键、鼠标点击、滚动、触摸屏输入等，并根据这些输入事件来控制游戏对象的行为。

以下是一些常用的Input Singleton方法：

-  `is_action_pressed(action_name)` : 检测指定的动作（action）是否被按下。
-  `is_action_just_pressed(action_name)` : 检测指定的动作是否刚刚被按下。
-  `is_action_released(action_name)` : 检测指定的动作是否被释放。
-  `get_mouse_position()` : 获取鼠标的当前位置。
-  `get_action_strength(action_name)` : 获取指定动作的强度值，用于处理持续输入（如按住按键）。

你可以在Godot的脚本中使用Input Singleton来处理输入事件并编写相应的逻辑。通过检测输入事件，您可以实现玩家控制、用户界面交互和游戏操作等功能。

```gdscript
extends Sprite2D

const MOVE_SPEED = 500
const SCREEN_WIDTH = 1152 # 屏幕宽度
const SCREEN_HEIGHT = 648 # 屏幕高度

func _process(delta):
    # 控制精灵移动
    var input_direction = Vector2()
    if Input.is_action_pressed('ui_left'): 
        input_direction.x = -1
    if Input.is_action_pressed("ui_right"):
        input_direction.x = 1
    if Input.is_action_pressed('ui_up'): 
        input_direction.y = -1
    if Input.is_action_pressed('ui_down'): 
        input_direction.y = 1
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
```