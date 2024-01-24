<PageHeader content="CollisionShape 碰撞形状：" />

::: tip 什么是碰撞形状？

在 Godot 中，碰撞形状是用于定义物体形状的几何对象。这些形状可以是简单的几何体，如盒子、球体、胶囊体，也可以是复杂的自定义形状。

总之，我们可以给某个物体添加碰撞形状，从而与场景中的其他物体对象进行交互。例如`玩家碰到敌人就会掉血的场景，如何监听物体1(玩家)触碰到了物体2(敌人)呢？`

:::

::: warning CollisionShape2D API

- **CollisionShape2D** 用于描述 2D 空间物体碰撞形状。

  - **shape 属性：**
    - `CapsuleShape` 胶囊形状
    - `CircleShape` 圆形形状
    - `ConvexPolygonShape` 凸多边形形状
    - `RectangleShape` 矩形形状
    - `TriangleShape` 三角形形状

- **CollisionPolygon2D** 定义 2D 碰撞多边形。

:::
