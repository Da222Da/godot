<PageHeader content="CharacterBody2D 节点" />

::: tip CharacterBody2D 是干什么的？

CharacterBody2D 节点，专门用于创建通过脚本移动的角色`2D 物理物体`。

这类物理体，通常是由用户控制的角色，必须按照特定的方式移动、与世界发生碰撞。

:::

::: danger 该如何移动 CharacterBody2D 物理体？

在 Godot 中，我们通过 `velocity 属性` 和 `move_and_slide() 方法` 来移动 CharacterBody2D 物理体。

在 _physics_process() 函数中，一旦我们修改了 velocity 属性，move_and_slide() 方法就会根据当前的 velocity 属性，来移动 CharacterBody2D 物理体。

:::

::: warning CharacterBody2D API

- **CharacterBody2D:**
  - 属性:
    - **velocity** `[默认： Vector2(0, 0)]` 当前速度向量(像素px/秒s)
  - 方法:
    - **move_and_slide()** 根据 velocity 移动该物体。
    - **is_on_floor()** 用于判断该物体是否在地板发生了碰撞。

:::
