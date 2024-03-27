<PageHeader content="在编程语言中，标识符与关键字是什么？" />

在编程语言中，标识符就是变量、函数、类的名称，如 `Player`、`player_name`、`player_health`、`_ready`。然而标识符在命名时需要遵循特定的规则，如不能以数字开头，不能包含特殊字符等。

至于，关键字就是编程语言中具有特定的含义的单词，如 `var`、`func`、`extends` 等。示例代码如下：

```gdscript
extends Node

class_name Player

var player_name = "Alice"
var player_health = 100

func \_ready():
    print("Player name: " + player_name)
    print("Player health: " + str(player_health))
```
