<PageHeader content="运算符" />

在 Godot 中，运算符用于执行算术、比较、逻辑、赋值等操作，常见的运算符有：

- 算术运算符：加法`+`、减法`-`、乘法`*`、除法`/`、取余数`%`

```gdscript
extends Node2D

var a = 1
var b = 2
func _ready():
	print(a + b) # 加法 3
	print(a - b) # 减法 -1
	print(a * b) # 乘法 2
	print(a / b) # 除法 0.5
	print(a % b) # 取余数 1
```

- 关系运算符：等于`==`、不等于`!=`、大于`>`、小于`<`、大于等于`>=`、小于等于`<=`

```gdscript
extends Node

var a = 5
var b = 3

func _ready():
    print("是否相等: " + str(a == b))
    print("是否不相等: " + str(a != b))
    print("是否大于: " + str(a > b))
    print("是否小于: " + str(a < b))
    print("是否大于等于: " + str(a >= b))
    print("是否小于等于: " + str(a <= b))
```

- 逻辑运算符：与`and` 或`or` 非`not`

```gdscript
extends Node

var a = true
var b = false

func _ready():
    print("a 与 b: " + str(a and b))
    print("a 或 b: " + str(a or b))
    print("非 a: " + str(not a))
    print("非 b: " + str(not b))
```

- 赋值运算符：等号`=`、加等号`+=`、减等号`-=`、乘等号`*=`、除等号`/=`

```gdscript
extends Node

func _ready():
    var x = 5  # 使用赋值运算符 "=" 将值 5 赋给变量 x
    var y := x  # 使用赋值运算符 ":=" 将变量 x 的值赋给变量 y
    print(x += 5) # 相当于 x = x + 5
    print(x -= 5) # 相当于 x = x - 5
    print(x *= 5) # 相当于 x = x * 5
    print(x /= 5) # 相当于 x = x / 5
```

- 字符串运算符：连接`"Hello, " + "Godot"`、插入`"My name is %s" % 'zhangsan'`。
