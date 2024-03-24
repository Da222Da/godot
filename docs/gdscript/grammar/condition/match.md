<PageHeader content="match 语句" />

`match 语句`：类似于其他编程语言中的 switch 或 case 语句。match 用于将一个变量的值与一系列模式进行比较，并执行与第一个匹配的模式相关联的代码块。match 语句提供了一种更结构化的方法来处理基于多个可能值的条件分支。

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
