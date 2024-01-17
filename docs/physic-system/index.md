# 物理系统

在 Godot 中，物理系统是指 Godot 引擎中内置的用于处理物理仿真和碰撞检测的模块，可以帮助你创建更真实和交互性的游戏体验。它提供了一套强大的工具和函数，用于模拟物理世界中的物体之间的相互作用。

::: tip 基础知识

- [Body 物体](./body.md)
  - [CharacterBody2D，通过脚本移动的 2D 物理体](./character-body-2d.md)
- [CollisionShape 碰撞形状](./collision-shape.md)
  - [CollisionShape2D 类](./collision-shape-2d.md)

:::

<!-- ::: danger 示例 & 实操

- 如何检测普通物体之间的碰撞？

::: -->

<!-- Collision layer 和 Collision Mask 是 Godot 中用于控制碰撞检测的两个属性。Collision layer 用于指定一个对象可以与哪些其他对象发生碰撞，而 Collision Mask 用于指定一个对象可以与哪些其他对象的哪些部分发生碰撞。

你可以在 Inspector 窗口中找到 Collision layer 和 Collision Mask 属性。Collision layer 是一个列表，其中包含了所有可用的碰撞层。每个碰撞层都有一个唯一的名称，你可以使用这个名称来引用它。Collision Mask 是一个二进制掩码，其中每个位表示一个碰撞层。如果一个对象的 Collision Mask 中某个位为 1，那么它就可以与具有相同位设置的其他对象发生碰撞。

以下是 Collision layer 和 Collision Mask 的一些示例：

- 一个对象的 Collision layer 设置为 "Player"，而另一个对象的 Collision layer 设置为 "Enemy"。这两个对象将不会发生碰撞。
- 一个对象的 Collision layer 设置为 "Player"，而另一个对象的 Collision Mask 设置为 "Player"。这两个对象将会发生碰撞。
- 一个对象的 Collision layer 设置为 "Player"，而另一个对象的 Collision Mask 设置为 "Enemy"。这两个对象将不会发生碰撞。

Collision layer 和 Collision Mask 可以用来实现各种各样的碰撞检测效果。例如，你可以使用它们来创建不同的游戏区域，或者让玩家与不同的敌人发生不同的碰撞效果。 -->
