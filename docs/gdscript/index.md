# GDScript 脚本是什么？

`GDScript` 是 Godot 引擎官方自定义的一种**脚本语言**，用来赋予游戏逻辑，也就是让我们游戏动起来。

::: tip 背景知识

-   [Gdscript 脚本与节点对象之间的关系？](./node-script-relationship.md)
-   [FPS 帧速率 && DeltaTime 增量时间？](./fps-deltatime.md)
-   [Gdscript 语法约定](./grammar.md)
    -   [Signal 信号](./signal.md)
    -   [Group 分组](./group.md)

:::

::: danger 示例 & 实操

-   [如何创建一个 gdscript 脚本？](./create-gdscript.md)

:::

::: warning @GDScript API

@GDScript 内置了一些修饰符、内置函数等，可以在任何脚本中直接访问。

#### 内置函数

-   **`\_ready()`** 当节点被加载到节点树中，准备渲染的时候，该函数就会被执行。
-   **`\_process(delta)`** 该函数就在游戏每一帧渲染之前被执行。
    -   delta 参数，表示增量时间（以秒为单位）。

#### 修饰符

-   **`@onready`** 使用 @onready 标记过的属性不会即刻赋值，而是，在调用 `Node._ready()` 之前，也就是节点及其子节点都已经进入场景树的时候，才进行赋值。

:::
