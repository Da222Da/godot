# 2D 图形

在 Godot 中，二维图形是指由平面上的点、线和形状组成的图像。在游戏开发中，二维图形通常用于创建 2D 游戏，如平台游戏、射击游戏、拼图游戏等。

通过在 2D 节点上设置属性、应用动画和物理效果，您可以实现二维图形的移动、旋转、缩放和碰撞检测等操作。Godot 还提供了丰富的 2D 绘图工具和函数，使您能够绘制形状、绘制文本、创建粒子效果等，以实现各种视觉效果和交互功能。

<BasicConcept :data='[
{ title: "CanvasItem 抽象类", content: "2D 空间中所有对象的抽象类，具有Visibility 可见性、Ordering 排序、Texture 纹理和 Material 材质属性 。" },
{ title: "Node2D 节点", content: "2D 游戏对象，被所有 2D 节点继承。" },
{ title: "Sprite2D 节点", content: "用于显示 2D 图像。具有位置、旋转、缩放和纹理属性。" },
{ title: "AnimationSprite2D 节点", content: "专门用于播放动画帧。" },
{ title: "TileMap 瓦片地图节点", content: "帮助我们快速地创建、并管理 2D 游戏地图。" },
{ title: "Camera2D 摄像机节点", content: "摄像机的拍摄区域，就是游戏的可视区域。" },
{ title: "RayCast2D 射线节点", content: "2D 空间中的射线，用于查找第一个相交的 CollisionObject2D。" },
]'
/>

<!-- -   [ParallaxBackground 视差背景](../nodes/parallaxbackground.md)
-   [Marker2D 标记特殊位置](../nodes/marker2d.md) -->

::: danger 常见问题：

-   [什么是二维向量及其运算方式?](./vector2.md)

:::

::: tip 2D 图形 - 知识结构

-   **CanvasItem 抽象类**
    -   `visible` 是否可见
    -   `z_index` 设置节点在 Z 轴上的顺序
    -   `modulate` 设置节点颜色
-   **Node2D 节点**
    -   `Position` 设置节点在 2D 空间中的位置
    -   `Rotation` 设置节点在 2D 空间中的旋转角度
    -   `Scale` 设置节点在 2D 空间中的缩放比例
-   **Sprite2D 显示 2D 图像**
    -   `texture 属性` 加载你要绘制的纹理资源
    -   `filp_h` 如果为 true, 纹理水平翻转
    -   `filp_v` 如果为 true, 纹理垂直翻转
    -   **animation 动画**
        -   `hframes 属性` 精灵表中的列数。
        -   `vframes 属性` 精灵表中的行数。
        -   `frame 属性` 当前显示的精灵表中的帧。
    -   **region 编辑图片的显示区域**
        -   `region_enabled` 是否从较大的图集纹理中裁剪纹理。
        -   `region_rect` 设置裁剪纹理的区域。
-   **TileMap 瓦片地图**
    -   `tile_set 属性` 指定瓦片集资源
        -   `physics layers` 给瓦片设置物理层与遮罩层
        -   `tile_size` 获取图块的尺寸大小
    -   `layers 属性` 添加地图层级
    -   `get_used_rect() 函数` 返回包围地图的矩形信息`Rect2i[position, Rect, end]`
-   **Camera2D 摄像机**
    -   `Zoom 视图缩放`可以放大或缩小相机视图中的内容。
    -   `Offset 相对偏移量` 用于更改相机中心位置。
    -   `Limits 限制` 用于控制摄像机拍摄的范围。
        -   `left & right & top & bottom` 极限值`(相机会在抵达该值时停止移动)`
        -   `limit_smoothed` 碰到极限值的时候，开启平滑过渡效果。
    -   `Position Smoothing 位置平滑` 可以给摄像机添加平滑过渡的效果`慢慢加速、慢慢停下`。
        -   `position-smoothing-enabled` 是否启用过渡效果
        -   `position-smoothing-speed` 设置平滑速度
    -   `Drag` 角色自由活动区域设置`在该区域内移动，相机不会跟随角色`
        -   `drag-horizontal-enabled` 是否开启水平方向上活动区域
        -   `drag-vertical-enabled` 是否开启垂直方向上活动区域
    -   `Editor` 编辑器矩形
        -   `editor_draw_screen`如果为 true，编辑器绘制相机拍摄范围的矩形。
        -   `editor_draw_limits` 如果为 true，编辑器绘制相机拍摄范围的极限矩形。
        -   `editor_draw_drag_margin` 如果为 true，编辑器绘制不移动相机的自由范围矩形。
    -   `reset_smoothing() 函数` 取消位置平滑效果，直接设置为目标位置。
-   **RayCast2D 射线**
    -   `is_colliding()` 是否有对象与射线的向量相交

:::
