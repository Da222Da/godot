<PageHeader content="Gdscript 语法约定？" />

::: tip 温馨提示

我们将从下面几个方面入手，来了解 Gdscript 脚本的语法约定：

变量、数据类型、运算符、条件语句、循环语句、函数、类与对象。

:::

-   **变量**
    -   `var 关键字` 申明一个变量
    -   `const 关键字` 申明一个常量
-   **数据类型**
    -   整数（Integer）：表示整数值，例如： `var my_integer = 10`
    -   浮点数（Float）：表示带有小数点的数值，例如： `var my_float = 3.14`
    -   布尔值（Boolean）：表示真（true）或假（false），例如：`var my_boolean = true`
    -   字符串（String）：表示文本数据，用引号括起来，例如： `var my_string = "Hello, Godot!"`
    -   数组（Array）：表示一组有序的值，例如：`var my_array = [1, 2, 3, "four"]`
    -   字典（Dictionary）：表示一组键值对，例如：`var my_dict = {"name": "John", "age": 25}`
    -   枚举（Enum）：表示一组预定义的命名常量，例如： `enum Direction { UP, DOWN, LEFT, RIGHT }`
    -   矢量（Vector2、Vector3、Vector4），例如：二维向量 `var my_vector = Vector2(1, 2)`
-   **运算符**
    -   算术运算符：加法`+`、减法`-`、乘法`*`、除法`/`、取余数`%`
    -   关系运算符：等于`==`、不等于`!=`、大于`>`、小于`<`、大于等于`>=`、小于等于`<=`。
    -   逻辑运算符：与`and` 或`or` 非`not`
    -   赋值运算符：等号`=`、加等号`+=`、减等号`-=`、乘等号`*=`、除等号`/=`
    -   字符串运算符：连接`"Hello, " + "Godot"`、插入`"My name is %s" % 'zhangsan'`。
-   **条件语句**
    -   `if …… elif …… else ……` 条件分支语句
    -   `switch && case` 条件分支语句
-   **循环语句**
    -   `for 循环`：用于在一个范围内执行代码块。
    -   `while 循环`：用于在一个条件成立时执行代码块。
    -   `do-while 循环`：用于在一个条件成立时执行代码块，然后再判断条件是否成立。
    -   `break 语句`：用于在循环中提前终止循环，并跳出循环体。
    -   `continue  语句`：用于在循环中跳过当前迭代，并继续执行下一次迭代。
-   **函数**
    -   `func 关键字` 申明函数
    -   `pass 关键字` 通常用作占位符，用于指示某个代码块暂时不需要执行任何操作。
-   **类与对象**

> **类 Classes**：是指具有相同特征`对象的属性和方法`的一群对象。
>
> **实例对象 Object**：是指通过类创建的对象。

```gdscript
extends Node

class_name MyClass

# 类的属性
var my_property = 0

# 类的方法
func my_method():
    print("Hello from MyClass!")
```

::: warning 注意！

每一个 GDScript 文件都代表着一个“子类”，这意味着你在文件范围内声明的所有内容(例如变量和函数)都是类定义的一部分。

:::
