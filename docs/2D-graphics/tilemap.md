<PageHeader content="TileMap 瓦片地图：" />

::: tip 为什么要使用 TileMap 瓦片地图呢？

因为 TileMap 可以帮助我们快速地创建游戏地图，这比一个接一个地放置单个的 Sprite2D 节点快了不止一点。除此之外，TileMap 添加碰撞、遮挡等强大功能。

总之，**TileMap 是创建和管理 2D 网格地图**的不二之选。

如果你想了解更多详情的话！请移步 [Using TileSets](https://docs.godotengine.org/en/4.1/tutorials/2d/using_tilesets.html#doc-using-tilesets) && [Using TileMaps](https://docs.godotengine.org/en/4.1/tutorials/2d/using_tilemaps.html)

:::

::: warning TileSet API && 快捷键

> TileSet 用于创建 Tilemap 可用的图块资源，支持物理、导航等功能，基础概念如下：
>
> - 地形：可以自动相互匹配图块集。

- **API**

  - `Physics Layers`设置物理层
  - `Terrain Sets` 设置地形
    - `add_terrain_set` 添加新的地形集。
    - `add_terrain` 往地形集里面添加新的地形。
    - `set_terrain_set_mode()` 设置地形模式。
      - `Match Corners and Sides` 要求与相邻图块地形的角和边都匹配。
      - `Match Corners` 要求与相邻图块地形的角都匹配。
      - `Match Sides` 要求与相邻图块地形的边都匹配。

- **快捷键:**

  - 单击、长按住`鼠标左键`，可选中图块。
  - 单击`鼠标右键`，可删除选中图块。

:::

::: warning TileMap 绘制游戏地图

- **快捷键:**
  - 按住`Shift 键 + 鼠标左键`，可以拖拽出一条直线。
  - 按住`Ctrl 键 + 鼠标左键`，可以吸取已经绘制出来的图块。
  - 按住`Ctrl 键 + Shift 键 + 鼠标键`，可以拖出矩形批量操作图块(左键-创建 & 右键-删除)

:::
