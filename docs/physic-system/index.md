# 物理引擎

物理引擎可以看做是 Godot 引擎一个内置系统，它负责处理游戏中的物理模拟，包括但不限于刚体的运动、碰撞检测、力学效应（如重力和摩擦力）以及其他物理现象。使得开发者能够创建出具有真实物理行为的游戏世界。

<BasicConcept :data='[
  { title: "物理体 PhysicsBody", content: "是指能够与 Godot 物理系统进行交互的节点对象。"},
  { title: "碰撞形状 CollisionShape", content: "指定物理体的碰撞检测区域。" },
  { title: "碰撞层 Collision Layer", content: "指定该物理体所属的碰撞图层。", type: "danger" },
  { title: "遮罩 Collision Mask", content: "指定该物理体可以与哪些碰撞图层发生碰撞。", type: "danger" },
  { title: "线速度 Linear Velocity", content: "是指物体沿着某一特定方向做“直线运动”时的移动速度。" },
  { title: "角速度 Angular Velocity", content: "是指物体绕着某一点的做`旋转运动`时的旋转速度。" },
  { title: "线性阻尼 Linear Damp",  content: `<div>用于模拟物体在移动过程中受到的阻力。</div><br/><div>线性阻尼可以随着时间的推移逐渐地减缓物体的线性速度，并最终停止移动。</div>`, elType:"popover" },
  { title: "旋转阻尼 Angular Damp",  content: `<div>用于模拟物体在旋转过程中受到的阻力。</div><br/><div>线性旋转可以随着时间的推移逐渐地减缓物体的旋转速度，并最终停止移动。</div>`, elType:"popover" },
  { title: "定向力 Directive Force", content: "定向力是指在特定方向上起作用的力，比如将物体推向特定方向。" },
  ]' 
/>

::: danger 常见问题

-   [在 Godot 中，\_physics_process() 和 \_process() 有什么区别？](./physics_process.md)

:::

::: tip 物理引擎 - 知识体系

#### 2D 场景相关

-   **Area2D ，创建 2D 碰撞检测区域**
    -   `body_entered 信号` 物体进入该区域的内置信号
-   **PhysicsBody2D 2D 物理体**
    -   `CharacterBody2D 运动体节点`，创建“靠代码控制来移动 2D 物理体”
        -   `velocity` 当前速度向量，调用 move_and_slide() 期间会进行使用并修改。
        -   `move_and_slide() 函数` 根据 velocity 移动该物体。
        -   `is_on_floor()` 判断物体是否与地板发生了碰撞。
    -   `RigidBody2D 刚体节点`，靠外力才能被移动的 2D 物理体
    -   `StaticBody2D 静态体节点`，创建无法被移动的 2D 物理体。
    -   `AnimatableBody2D 动画物理体` 配合`AnimationPlayer`可以做动画的 2D 物理体。
-   **CollisionShape 碰撞形状**
    -   `CollisionShape2D 节点`， 定义二维碰撞形状
        -   `shape 属性` 形状
            -   `WorldBoundaryShape2D 选项` 用于创建无限延伸的地面形状。
        -   `disabled 属性` 是否禁用碰撞。
        -   `one_way_collision 属性` 是否启用单向碰撞。
    -   `CollisionPolygon2D 节点` 用于定义二维多边形碰撞形状。

#### 3D 场景相关

-   **PhysicsBody3D 3D 物理体**
    -   `RigidBody3D 刚体节点`，靠外力才能被移动的 3D 物理体
        -   `apply_force() & apply_central_force()` 对实体施加一个定向力`是否影响旋转?`
        -   `apply_torque()` 施加旋转力
        -   碰撞检测：
            -   `contact_monitor` 是否开启接触监控
            -   `max_contacts_reported` 指定物理引擎在每帧中处理的最大接触点数量，从而影响物理模拟的准确性和性能。

:::
