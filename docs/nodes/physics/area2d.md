<PageHeader content="Area2D 类" />

::: tip Area2D 节点是什么?

Area2D 是 Godot 的内置节点类型。它可以创建一个用于检查`物理对象（或其他区域）`是否`进入（或退出）`的 2D 区域。

不过，需要注意的是，Area2D 实例对象**本身没有任何意义，在游戏中它也是不显示**，往往需要配合其他节点配置一起使用，例如`CollisionShape2D 定义区域形状`。

:::

::: warning Area2D API

#### 继承关系

Object > Node > CanvasItem > Node2D > CollisionObject2D > Area2D

#### 属性

- `monitoring` 是否开启区域检测，默认为`true`。

#### 内置信号

- `area_entered(area: Area2D)` 有其他区域进行此区域时发出。
- `area_exited(area: Area2D)` 有其他区域离开此区域时发出。
- `body_entered(body: Node2D)` 有物体`例如，PhysicsBody2D、TileMap`进入此区域时发出。
- `body_exited(body: Node2D)` 有物体`例如，PhysicsBody2D、TileMap`离开此区域时发出。

:::
