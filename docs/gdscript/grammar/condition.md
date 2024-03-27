<PageHeader content="条件语句：" />

在 Godot 中，条件语句主要包括 `if` 语句、 `elif` 语句、 `else` 语句以及 `match` 语句。这些条件语句用于根据不同条件执行相应的代码块。

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
