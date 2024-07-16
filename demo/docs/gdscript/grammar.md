<PageHeader content="Godot 的语法约定" />

我们可以通过以下的几个方面，快速地了解 Godot 的语法约定：

[[toc]]

## 1.数据类型

```gdscript
var my_integer = 42 # 整数
var my_float = 3.14 # 浮点数
var my_string = "Hello, World!" # 字符串
var is_true = true # 布尔值
var my_array = [1, 2, 3, 4, 5] # 数组
var my_dict = {"name": "Alice", "age": 30} # 字典

# 枚举
enum Direction {
    UP,
    DOWN,
    LEFT,
    RIGHT = -1
}
# 枚举，相当于声明常量
# const UP = 0
# const DOWN = 1
# const LEFT = 2
# const RIGHT = -1

var my_direction = Direction.UP

# 向量
var my_vector2 = Vector2(1.0, 2.0) # 二维向量
var my_vector3 = Vector3(1.0, 2.0, 3.0)  # 三维向量

# 颜色
var my_color = Color(1.0, 0.0, 0.0, 1.0)
```

## 2.变量

在 Godot 中，变量可以存储任何类型的数据，并且可以在程序运行时更改其值。

### 2-1.变量声明

```gdscript
# 动态类型声明
var my_var = 15
my_var = "Hello, World!" # 动态类型声明允许在变量声明后更改其类型

# 静态类型声明
var num:int = 15
var num := 15 # 类型推断，自动推断变量类型

# 常量声明
const MAX_HEALTH:int = 100  # 常量值在声明后不能被修改

# 局部变量声明
func _ready():
    var my_local_var = 15 # 局部变量只能在函数或方法内部使用
    print(my_local_var)

```

### 2-2. 变量操作

在 Godot 中，运算符用于执行算术、比较、逻辑、赋值等操作：

```gdscript
var a = 1
var b = 2

# 算术运算符：加法`+`、减法`-`、乘法`*`、除法`/`、取余数`%`
func _ready():
	print(a + b) # 加法 3
	print(a - b) # 减法 -1
	print(a * b) # 乘法 2
	print(a / b) # 除法 0.5
	print(a % b) # 取余数 1

# 关系运算符：等于`==`、不等于`!=`、大于`>`、小于`<`、大于等于`>=`、小于等于`<=`
func _ready():
    print("是否相等: " + str(a == b))
    print("是否不相等: " + str(a != b))
    print("是否大于: " + str(a > b))
    print("是否小于: " + str(a < b))
    print("是否大于等于: " + str(a >= b))
    print("是否小于等于: " + str(a <= b))

# 逻辑运算符：与`and` 或`or` 非`not`
func _ready():
    print("a 与 b: " + str(a and b))
    print("a 或 b: " + str(a or b))
    print("非 a: " + str(not a))
    print("非 b: " + str(not b))

# 赋值运算符：等号`=`、加等号`+=`、减等号`-=`、乘等号`*=`、除等号`/=`
func _ready():
    var x = 5  # 使用赋值运算符 "=" 将值 5 赋给变量 x
    var y := x  # 使用赋值运算符 ":=" 将变量 x 的值赋给变量 y
    print(x += 5) # 相当于 x = x + 5
    print(x -= 5) # 相当于 x = x - 5
    print(x *= 5) # 相当于 x = x * 5
    print(x /= 5) # 相当于 x = x / 5

# 字符串运算符
var str1 = "Hello, " + "Godot" # 连接
var str2 = "My name is %s" % 'zhangsan' # 插入
```

## 3.逻辑语句

### 3-1.条件语句

在 Godot 中，条件语句主要包括 `if-elif-else` 语句，以及 `match` 语句。这些条件语句用于根据不同条件执行相应的代码块。

示例代码如下：

```gdscript
var number = 10

if number < 10:
    print("小于 10")
elif number == 10:
    print("等于 10")
else:
    print("大于 10")

```

```gdscript
var state = "running"

match state:
    "idle":
        print("角色静止")
    "running":
        print("角色奔跑")
    "jumping":
        print("角色跳跃")
    _:
        # _用作默认或“其他”情况，当没有其他分支匹配时执行。
        print("未知状态")

```

### 3-2.循环语句

```gdscript
# 使用for循环打印数字1到5
for i in range(1, 6):
    print(i)

# while循环
var i = 0
while i < 5:
    if i == 1:
        i += 1
        continue # 跳过本次循环，继续下一次循环
           if i == 3:
        break # 跳出循环
    print(i)
    i += 1

```

## 4.函数

```gdscript
# 定义函数
func fn(bool: boolean) -> void:
    if bool: print("Yes")
    else:
        for i in range(1, 6):
            print(i)

# 调用函数
fn(true)

```

## 5.类

::: warning 注意！

每一个 GDScript 脚本文件本身一个“类”，这意味着你在文件范围内声明的所有内容(例如变量和函数)都是类定义的一部分。

:::

```gdscript
extends Node # 继承

class_name MyClass # 命名

var my_property = 0 # 类的属性

# 类的方法
func my_method():
    print("Hello from MyClass!")
```
