# 物理引擎

在 Godot 游戏开发中，物理引擎是 Godot 引擎内置的一个系统，它负责处理游戏中的物理模拟，包括但不限于刚体的运动、碰撞检测、力学效应（如重力和摩擦力）以及其他物理现象。Godot 的物理引擎提供了一套工具和组件，使得开发者能够创建出具有真实物理行为的游戏世界。

Godot 的物理引擎支持 2D 和 3D 游戏开发，具体包括以下几个方面：

1. **力学模拟**：物理引擎能够模拟力学原理，如牛顿运动定律，物体在力的作用下的运动和静止状态。
2. **碰撞检测**：物理引擎可以识别和处理物体之间的碰撞事件，计算碰撞后的速度和方向，以及可能的变形或破坏。
3. **软体和刚体动力学**：软体动力学模拟的是可变形物体的行为，如布料、绳索、生物组织等。刚体动力学则关注刚性物体的运动，如木块、汽车、机器人等。
4. **流体模拟**：物理引擎可以模拟液体和气体的行为，包括水流、烟雾、火焰等现象。
5. **约束系统**：物理引擎提供了一系列约束，如铰链、弹簧、绳子等，用于限制物体的运动范围和方式。
6. **声学**：模拟声音在介质中的传播，包括反射、折射、吸收等现象。

::: tip

#### 基础概念

- **物理模拟**：物理引擎在模拟现实世界中的物理现象和物体行为的过程。
- **线速度 linear_velocity** 通常指的是物体在物理模拟中沿着某一特定方向的移动速度`直线运动`。
- **角速度 angular_velocity** 描述物体绕着某一点的旋转运动，即物体的旋转速度。

#### 常见问题:

- [物体与物理体之间的区别？](./body.md)
- [CollisionLayer 碰撞层与 CollisionMask 遮罩的区别？](./collision-layer-mask.md)
- [在 Godot 中，\_physics_process() 和 \_process() 有什么区别？](./physics_process.md)

#### 常用节点：

- [Area2D 类，创建 2D 检测区域](../nodes/physics/area2d.md)
- PhysicsBody2D 2D 物理体
  - [CharacterBody2D 类，创建“靠代码控制来移动 2D 物理体”](../nodes/physics/characterbody2d.md)
  - [RigidBody2D 刚体，靠外力才能被移动的 2D 物理体](../nodes/physics/rigidbody2d.md)
  - `StaticBody2D 类`，创建无法被移动的 2D 物理体。
- CollisionShape 碰撞形状
  - [CollisionShape2D 类， 定义二维碰撞形状](../nodes/physics/collisionshape2d.md)
  - `CollisionPolygon2D 类` 用于定义二维多边形碰撞形状。

:::

<!-- ::: danger 示例 & 实操

- 如何检测 2D 区域之间的碰撞？
- 如何检测 2D 物理体与 2D 区域之间的碰撞？

::: -->

<!-- ::: warning GDScript API

- **Node 类** 所有场景对象的基类：
  - `_physics_process(delta)` 用于在物理模拟期间执行代码。
- **ProjectSettings 类** 存储着可以在任何地方访问的全局变量。
  - `ProjectSettings.get_setting("physics/2d/default_gravity")` 获取 2D 物理的默认重力。

::: -->
