<PageHeader content="CharacterBody2D 类" />

::: tip CharacterBody2D 是什么？

CharacterBody2D 类，专门用于创建通过脚本移动的角色`2D 物理物体`。

这类物理体，通常是由用户控制的角色，必须按照特定的方式移动、与世界发生碰撞。

:::

::: warning 相关 API

- **CharacterBody2D:**
  - 属性:
    - **velocity** `[默认： Vector2(0, 0)]` 当前速度向量
  - 方法:
    - **move_and_slide()** 根据 velocity 移动该物体。
    - **is_on_floor()** 用于判断该物体是否在地板发生了碰撞。

:::
