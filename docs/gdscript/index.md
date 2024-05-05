# GDScript 编程语言

`GDScript` 是 Godot 引擎官方自定义的一种**脚本语言**，用来赋予游戏逻辑，也就是让我们游戏动起来。

::: tip GDScript 编程语言 - 知识结构

#### GDScript 语法

-   基础概念：[指令](./grammar/command.md)、[标识符](./grammar/identifier.md)、[关键词](./grammar/keyword.md)、修饰符、类型提示
-   语法约定: [变量](./grammar/variable.md)、[数据类型](./grammar/data-type.md)、[运算符](./grammar/operators.md)、[条件语句](./grammar/condition.md)、[循环语句](./grammar/loop.md)、[函数](./grammar/function/index.md)、[类](./grammar/condition.md)
-   语法特性：[signal 信号](./grammar/signal.md)
    <!-- -   修饰符: [@onready](./grammar/modifier/onready.md)、[@export](./grammar/modifier/export.md)
    -   关键词: [is 关键词](./grammar/keyword/is.md)、[in 关键词](./grammar/keyword/in.md) -->

#### 内置对象

-   内置函数：`_ready() 第一次运行游戏时，调用`、`_process() 更新游戏画面时，调用`
-   内置节点： [Timer 定时器节点](../nodes/timer.md)

:::

::: danger 常见问题：

-   [\_process(delta) 内置函数中，参数 delta 是什么意思？](./fps-deltatime.md)
-   [如何连接信号、自定义信号？](./grammar/signal.md)

:::

<!-- 在 Godot 中，await 关键字是干什么的？

await 用于等待信号发出后，程序再从停止的位置继续执行。 -->
