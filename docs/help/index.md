# 附录

::: tip 项目设置经验

- [如何设计游戏窗口的大小？](./project-settings/game-window-design.md)
- [如何解决 2d 游戏中像素精灵模糊的问题？](./project-settings/render-blur.md)
- [如何设置项目初始化背景色？](./project-settings/init-projecty-background-color.md)

- 项目设置：
  - 常规
    - 窗口
      - 手持设备
        - `Landscape 默认` 表示设备的屏幕方向是横屏。
        - `Portrait` 表示设备的屏幕方向是竖屏，即设备的高度大于宽度。在这种模式下，游戏会自动调整界面布局，让游戏内容得到更好的显示。
      - 窗口大小
        - `Width` 表示窗口宽度
        - `Height` 表示窗口高度
      - 拉伸
        - 模式
          - `viewport` 当设备大小和内容大小不匹配时，内容会缩放或拉伸以填充整个 Viewport。
          - `canvas_items`表示对象将根据其父级的大小进行拉伸。这意味着对象将始终保持与其父级相同的比例，无论其父级的大小如何。
    - 输入设备
      - 指点
        1. 用鼠标模拟触摸`默认 false`
        2. 用触摸模拟鼠标`默认 true`

:::

::: warning 额外说明

- [Godot 是什么？](./extra/what-godot.md)
- [如何安装 Godot 游戏引擎？](./extra/install.md)
- [如何创建一个游戏项目？](./extra/create-project.md)

:::
