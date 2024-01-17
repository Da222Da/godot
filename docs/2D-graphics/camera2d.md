<PageHeader content="Camera2D 二维摄像机：" />

::: danger 什么时候需要使用 Camera2D 摄像机？
当一个游戏的内容场景无法一次性地在设备屏幕上完全显示的时候，例如，在 RPG 游戏中，玩家通常要探索一个广阔的世界。

这时，只需添加一个相机并使其跟随玩家，利用 Camera2D 的视口将场景内容渲染到设备屏幕中，即可！
:::

::: warning Camera2D API

- **Offset 相对偏移量：** 用于更改相机中心位置。
- **Limits 限制：** 用于控制摄像机的视野。
  - Left 左侧滚动极限`(相机会在抵达该值时停止移动)`
  - Right 右侧滚动极限
  - Top 顶部滚动极限
  - Bottom 底部滚动极限
- **Position Smoothing 位置平滑：** 可以给摄像机添加平滑过渡效果。
  - Enabled 是否启用过渡效果
  - Speed 设置平滑速度

:::
