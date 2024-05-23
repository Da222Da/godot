# GDScript 编程语言

`GDScript` 是 Godot 引擎官方自定义的一种**脚本语言**，用来赋予游戏逻辑，也就是让我们游戏动起来。

<BasicConcept :data='[
{ title: "指令", content: "指令就是告诉计算机你想要执行的任务，而一个脚本就是由各种各样的指令组成的。" },
{ title: "标识符", content: "在编程语言中，标识符就是变量、函数、类的名称，如 `Player`、`player_name`、`player_health`。" },
{ title: "关键字", content: "关键字就是编程语言中具有特定的含义的标识符" },
{ title: "注释", content: "注释不会被编译器执行，而是用来帮助开发人员理解代码的目的和功能。其快捷键为 `Ctrl + K`" },
{ title: "修饰符", content: "修饰符是一种特殊的标记，可以影响代码的执行方式或在编辑器中显示的方式。", type: "danger" },
{ title: "修饰符 @export",content: `<div>用于将脚本中的成员变量（variables）或方法（methods）标记为可以在编辑器中编辑和调整的属性。<ul><li>@export 导出一个值</li><li>@export_range 导出一个范围</li></ul></div>`, elType:"popover" },
{ title: "_process()", content: "内置函数 Node._process()：更新游戏画面帧的时候，调用", type: "danger" },
{ title: "_ready()", content: "内置函数 Node._ready()：第一次运行游戏时，调用" },
{ title: "分组 Group", content: "将节点组织在一起，以便在运行时轻松地对它们进行管理和操作。" },
{ title: "定时器节点 Timer", content: "定时器节点可以用于在特定时间间隔后执行代码，或者在特定时间点执行代码。" },
]'
/>

::: tip GDScript 编程语言 - 知识结构

#### GDScript 语法

-   基础概念：[指令](./grammar/command.md)、[标识符](./grammar/identifier.md)、[关键词](./grammar/keyword.md)、修饰符、类型提示
-   语法约定: [变量](./grammar/variable.md)、[数据类型](./grammar/data-type.md)、[运算符](./grammar/operators.md)、[条件语句](./grammar/condition.md)、[循环语句](./grammar/loop.md)、[函数](./grammar/function/index.md)、[类](./grammar/condition.md)
-   语法特性：[signal 信号](./grammar/signal.md)

:::

::: danger 常见问题：

-   [\_process(delta) 内置函数中，参数 delta 是什么意思？](./fps-deltatime.md)

:::

<!-- 在 Godot 中，await 关键字是干什么的？

await 用于等待信号发出后，程序再从停止的位置继续执行。 -->
