# 物理系统

在 Godot 中，物理系统是指 Godot 引擎中内置的用于处理物理仿真和碰撞检测的模块，可以帮助你创建更真实和交互性的游戏体验。它提供了一套强大的工具和函数，用于模拟物理世界中的物体之间的相互作用。

::: tip 基础知识

- [Body 物体](./body.md)
  - [CharacterBody2D，创建“通过脚本移动的 2D 物理体”](./character-body-2d.md)
- Collision 碰撞
  - [CollisionShape 碰撞形状](./collision-shape.md)
  - 碰撞检测
    - `Collision Layer 属性`：用于指定该节点所属的碰撞图层。
    - `Collision Mask 属性`：用于指定该节点可以与哪些碰撞图层发生碰撞。

:::

<!-- ::: danger 示例 & 实操

- 如何检测普通物体之间的碰撞？

::: -->

::: warning GDScript API

- **Node 类** 所有场景对象的基类：
  - `_physics_process(delta)` 如果那一帧存在物理处理的话，就会调用该函数。
- **ProjectSettings 类** 存储着可以在任何地方访问的全局变量。
  - `ProjectSettings.get_setting("physics/2d/default_gravity")` 获取 2D 物理的默认重力。

:::
