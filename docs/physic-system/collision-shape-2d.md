<PageHeader content="CollisionShape2D 类" />

::: tip CollisionShape2D 是干什么的？

在 Godot 中，我们可以使用 CollisionShape2D 类来定义 2D 物体的几何形状。这些形状可以是简单的几何体，如盒子、球体、胶囊体，也可以是复杂的自定义形状。

:::

::: danger 为什么要给物体添加碰撞形状呢？

在 Godot 中，只有添加了碰撞形状的物体，才能与其他物体进行交互。

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
