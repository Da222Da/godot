<PageHeader content="ParallaxBackground 视差背景：" />

::: danger ParallaxBackground 视差背景有什么用？

`ParallaxBackground 视差背景` 配合 `ParallaxLayer 视差层` 可以轻松地产生视差效果。

这种效果在侧滚游戏中很常见，因为它能够远处的物体看上去比近处的物体移动得慢，为游戏的视觉方面提供了另一种深度。

:::

::: warning 相关 API

1. **ParallaxBackground** 用于创建滚动视差的节点。
   - **scroll_offset [默认： Vector2(0, 0)]** 视差背景的滚动值。
2. **ParallaxLayer** ParallaxBackground 的子节点，用于创建视差滚动层。
   - **motion_mirroring 镜像** 用于重复视差层，创建无限滚动的背景。
   - **motion_scale 缩放** 用于设置视差层滚动的运动快慢。
   - **motion_offset 偏移** 该层的起始偏移量，也就是开始的位置。

:::
