<PageHeader content="变量" />

在 Godot 中，变量是用于存储数据的标识符。变量可以是整数、浮点数、字符串等不同类型的数据。

- `var` 用于声明变量，其值可以在程序运行时更改。
- `const` 用于声明常量，其值在声明后不能被修改。

示例代码如下：

```gdscript
extends Node

var player_name = "Alice" # 变量可以在程序运行时更改
const MAX_HEALTH = 100     # 常量值在声明后不能被修改

func _ready():
    player_name = "Bob"     # 变量的值可以被更改
    # MAX_HEALTH = 200      # 尝试修改常量值会导致错误
    print("Player name: " + player_name)
    print("Max health: " + str(MAX_HEALTH))
```
