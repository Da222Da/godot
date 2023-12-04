# Area2D 空间区域类

Area2D 是 2D 空间中的一个区域，由一个或多个 CollisionShape2D 或 CollisionPolygon2D 子节点组成，能够检测到其他 2D 碰撞对象`CollisionObject2D` 进入或退出该区域。

- 属性
    - `name` 区域名称
- 方法
    - `is_in_group` 用于检测碰撞对象是否属于某个组
- 信号
    - `area_entered(area: Area2D)` 当接收的 area 进入此区域时发出。
    - `area_exited(area: Area2D)` 当接收的 area 退出此区域时发出。