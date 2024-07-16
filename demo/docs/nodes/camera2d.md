<PageHeader content="Camera2D 二维摄像机" />

::: tip 什么是摄像机？

摄像机是用来渲染场景的，它决定了场景中哪些部分是可见的。

摄像机可以被用来实现滚动背景、人物移动、镜头切换等效果。

:::

::: danger 什么时候需要添加摄像机？

当游戏屏幕无法完全显示整个游戏场景内容的时候，例如，在 RPG 游戏中，玩家通常要探索一个广阔的世界。

这时，就需要给移动的角色添加一个摄像机，而摄像机会将视口场景的内容渲染到设备屏幕中。

:::

::: warning Camera2D API

> Camera2D 类，用于创建 2D 场景的摄像机。

- **Zoom 视图缩放**可以放大或缩小相机视图中的内容。
- **Offset 相对偏移量：** 用于更改相机中心位置。
- **Limits 限制：** 用于控制摄像机拍摄的范围。
  - `limit_left` 左侧滚动极限`(相机会在抵达该值时停止移动)`
  - `limit_right` 右侧滚动极限
  - `limit_top` 顶部滚动极限
  - `limit_bottom` 底部滚动极限
  - `limit_smoothed` 碰到极限值的时候，开启平滑过渡效果。
- **Position Smoothing 位置平滑：** 可以给摄像机添加平滑过渡的效果`慢慢加速、慢慢停下`。
  - `position-smoothing-enabled` 是否启用过渡效果
  - `position-smoothing-speed` 设置平滑速度
- **Drag** 角色自由活动区域设置`在该区域内移动，相机不会跟随角色`
  - `drag-horizontal-enabled` 是否开启水平方向上活动区域
  - `drag-vertical-enabled` 是否开启垂直方向上活动区域
- **Editor** 摄像机辅助线
  - `editor_draw_screen`是否开启绘制摄像机拍摄范围的辅助线
  - `editor_draw_drag_margin` 是否开启角色自由移动范围的辅助线
- 方法
  - `reset_smoothing()` 用于取消平滑过渡效果

:::
