<PageHeader content="TileMap && TileSet 瓦片地图：" />

::: tip 基本概念:

#### 为什么要使用 TileMap 瓦片地图呢？

因为 TileMap 可以帮助我们快速地创建游戏地图，这比一个接一个地放置单个的 Sprite2D 节点快了不止一点。除此之外，TileMap 添加碰撞、遮挡等强大功能。

总之，**TileMap 是创建和管理 2D 网格地图**的不二之选。

#### 什么是 TileMap 瓦片地图？

瓦片地图 TileMap，是指使用`瓦片集 TileSet`中的图块，在游戏中绘制的地图。

#### 什么是 TileSet 瓦片集？

TileSet 是指用于创建游戏地图的可用图块集合，它由无数个瓦片`tile`组合而成，如下图所示。

除此之外，Godot 游戏引擎还允许我们对 TileSet 里面的图块进行编辑，例如添加物理行为等。

![tile-set](/images/tile-set.png)

:::

<!-- #### API

- `Physics Layers`设置物理层
- `Terrain Sets` 设置地形`可以自动相互匹配图块集`

  - `add_terrain_set` 添加新的地形集。
  - `add_terrain` 往地形集里面添加新的地形。
  - `set_terrain_set_mode()` 设置地形模式。
    - `Match Corners and Sides` 要求与相邻图块地形的角和边都匹配。
    - `Match Corners` 要求与相邻图块地形的角都匹配。
    - `Match Sides` 要求与相邻图块地形的边都匹配。

#### 快捷键

 -->

::: warning TileMap API

#### 继承关系

Object > Node > CanvasItem > Node2D > TileMap

#### 常用属性

- `tile_set` 加载图块集资源。

#### 常用方法

- `add_layer()` 添加图层。
- `set_layer_enabled()` 是否启用图层。

:::

---

---

::: warning TileSet API

#### 继承关系

Object > RefCounted > Resource > TileSet

#### 常用属性

- `tile_shape` 图块形状。
- `tile_size` 图块大小。

:::

::: danger tilemap 绘制游戏地图的快捷键：

- `鼠标左键`绘制图块
- `鼠标右键`删除图块
- 按住`Ctrl 键 + 鼠标左键`，可以吸取已经绘制出来的图块。

:::
