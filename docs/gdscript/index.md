# GDScript 编程语言

`GDScript` 是 Godot 引擎官方自定义的一种**脚本语言**，用来赋予游戏逻辑，也就是让我们游戏动起来。

<BasicConcept :data='[
{ title: "指令", content: "指令就是告诉计算机你想要执行的任务，而一个脚本就是由各种各样的指令组成的。" },
{ title: "注释", content: "注释不会被编译器执行，而是用来帮助开发人员理解代码的目的和功能。其快捷键为 `Ctrl + K`" },
{ title: "标识符", content: "在编程语言中，标识符就是变量、函数、类的名称，如 `Player`、`player_name`、`player_health`。" },
{ title: "关键字", content: "关键字就是编程语言中具有特定的含义的标识符。" },
{ title: "修饰符", content: "修饰符是一种特殊的标记，可以影响代码的执行方式或在编辑器中显示的方式。" },
{ title: "@GlobalScope 类", content: "里面存放着全局范围内可自由访问的常量和函数" },
{ title: "Engine 类", content: "提供对引擎属性的访问 API" },
{ title: "定时器节点 Timer", content: "定时器节点可以用于在特定时间间隔后执行代码，或者在特定时间点执行代码。" },
]'
/>

::: danger 常见问题：

-   [\_process(delta) 内置函数中，参数 delta 是什么意思？](./fps-deltatime.md)

:::

::: tip GDScript 编程语言 - 知识结构

-   **语法约定**
    -   [基础语法：数据类型、变量、逻辑语句、函数、类](./grammar.md)
    -   关键字：
        -   `is 关键字` 用于检查一个对象是不是某个类的实例。
        -   `in 关键字` 用于检查一个值是否存在于一个集合（如数组、字典的键）中。
    -   修饰符：
        -   `@export` 用于将脚本中的成员变量标记为可编辑的属性。
        -   `@export_range` 导出的是一个可编辑的范围属性。
    -   语言特性:
        -   [Signal 信号，用于节点对象之间的通信。](./signal.md)
        -   [Group 分组，用于组织具有相同功能的节点。 ](./group.md)
-   **Node 类: 所有场景对象的基类**
    -   `_process(delta) 函数` 内置函数 Node.\_process()：更新游戏画面帧的时候，调用
    -   `_ready() 函数` 内置函数 Node.\_ready()：第一次运行游戏时，调用
-   **@GlobalScope: 全局范围的常量和函数**
    -   `move_and_slide() 函数` 根据 velocity 移动该物体。
    -   `move_toward(from, to, delta) 函数` 将 from 向 to 移动，移动的长度是 delta。
-   **Engine 类：提供对引擎属性的访问**
    -   `time_scale 属性` 控制世界时间流速的缩放

:::
