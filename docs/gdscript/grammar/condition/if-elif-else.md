<PageHeader content="if-elif-else 语句" />

在 Godot 的 GDScript 中，`if-elif-else` 语句用于基于一个条件来执行代码。如果条件为真（即，条件表达式的结果是 true），则执行 if 语句块内的代码。这是一种基本的流程控制语句，用于根据不同的条件执行不同的代码路径。

```gdscript
var number = 10

if number < 10:
    print("小于 10")
elif number == 10:
    print("等于 10")
else:
    print("大于 10")

```
