# 物理系统

在 Godot 中，物理系统是指 Godot 引擎中内置的用于处理物理仿真和碰撞检测的模块，可以帮助你创建更真实和交互性的游戏体验。它提供了一套强大的工具和函数，用于模拟物理世界中的物体之间的相互作用。

::: tip 基础知识

- **物理引擎：** 是指使用数学模型来计算物体在游戏世界中的运动和相互作用的软件。
  - **物理模拟：** 是指物理引擎更新游戏世界中物理定律的过程，`一般会在每帧开始时进行`。
  - **物理模拟期间：** 物理引擎正在更新游戏世界的时候。
- **物理碰撞检测：** 是指检测两个物体是否发生碰撞的过程。
  - [Body 物体](./body.md)
    - CollisionObject2D 2D 碰撞对象
      - [Area2D 类，创建二维检测区域](./area-2d.md)
      - PhysicsBody2D 2D 物理体
        - [CharacterBody2D 类，创建“靠代码控制的移动 2D 物理体”](./character-body-2d.md)
        - `StaticBody2D 类`，创建无法被移动的 2D 物理体
        - `RigidBody2D 类`，创建无法直接控制，必须施加力（重力等），才能移动的 2D 物理体
  - CollisionShape 碰撞形状
    - [CollisionShape2D 类， 定义二维碰撞形状](./collision-shape-2d.md)
  - `Collision Layer 属性`：用于指定该节点所属的碰撞图层。
  - `Collision Mask 属性`：用于指定该节点可以与哪些碰撞图层发生碰撞。
- **物理碰撞响应：** 是指当两个物体发生碰撞时，它们之间相互作用的响应过程。
:::

<!-- ::: danger 示例 & 实操

- 如何检测普通物体之间的碰撞？

::: -->

::: warning GDScript API

- **Node 类** 所有场景对象的基类：
  - `_physics_process(delta)` 用于在物理模拟期间执行代码。
- **ProjectSettings 类** 存储着可以在任何地方访问的全局变量。
  - `ProjectSettings.get_setting("physics/2d/default_gravity")` 获取 2D 物理的默认重力。

:::
