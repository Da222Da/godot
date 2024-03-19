# GDScript 脚本是什么？

`GDScript` 是 Godot 引擎官方自定义的一种**脚本语言**，用来赋予游戏逻辑，也就是让我们游戏动起来。

::: tip 基础知识

#### GDScript 语法

-   [语法约定](./grammar/index.md)
-   `in 关键词`，用于判断对象上是否存在某个属性`例如,'hit' in body`
-   [Signal 信号](./signal.md)

#### 常见问题：

-   [Gdscript 脚本与节点对象之间的关系？](./node-script-relationship.md)
-   [FPS 帧速率 && DeltaTime 增量时间](./fps-deltatime.md)

#### 内置节点

-   [Timer 定时器节点](../nodes/timer.md)
-   [Node 所有场景对象的基类](../nodes/node.md)

:::

::: danger 示例 & 实操

-   [如何创建一个 gdscript 脚本？](./create-gdscript.md)
-   [如何理解增量时间 DeltaTime？](./fps-deltatime-understand.md)
-   信号：
    -   [如何连接 Godot 自带的内置信号？](./signal-builtin.md)
    -   [如何创建自定义信号？](./signal-custom.md)

:::

::: warning @GDScript API

@GDScript 内置了一些修饰符、内置函数等，可以在任何脚本中直接访问。

#### 内置函数

-   delta 参数，表示增量时间（以秒为单位）。

#### 修饰符

-   **`@onready`** 使用 @onready 标记过的属性不会即刻赋值，而是，在调用 `Node._ready()` 之前，也就是节点及其子节点都已经进入场景树的时候，才进行赋值。
-   **`@export`** 将变量暴露给编辑器，使游戏更加容易更新，方便调试。

:::
