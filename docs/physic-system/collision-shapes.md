# 如何定义碰撞形状？


要定义碰撞形状，可以试试以下碰撞形状节点：

- `CollisionShape2D` 定义 2D 空间中的碰撞形状。
    - shape 属性
        - `CapsuleShape` 胶囊形状
        - `CircleShape` 圆形形状
        - `ConvexPolygonShape` 凸多边形形状
        - `RectangleShape` 矩形形状
        - `TriangleShape` 三角形形状
    - OneWayCollision（单向碰撞）： 允许物体只能在一个方向上与其他物体发生碰撞。
    
- `CollisionPolygon2D` 定义 2D 碰撞多边形。

::: danger 注意事项

需要注意的是：该碰撞节点必须是物理体（physics body）节点的直接子节点。

:::

::: tip 个人经验

一般来说，定义碰撞形状时不需要像素完美。形状越简单，性能越好，最终玩家可能不会注意到。例如，无论是在2D还是3D中，`CapsuleShape（胶囊形状）`都非常适合角色。

:::