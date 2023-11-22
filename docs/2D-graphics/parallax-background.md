# 如何设置视差背景？

::: tip 背景知识

实现原理：**`ParallaxBackground` 使用一个或多个 `ParallaxLayer` 子节点来创建视差效果**。具体做法就是让每个 `ParallaxLayer` 以不同的速度移动，这样就能在 2D 游戏中创造一种产生视差效果，在这种效果中，远处的物体似乎比近处的物体移动得慢。

- `ParallaxBackground` 用于创建滚动视差的节点。其常用属性如下：
    1. `scroll_offset [默认： Vector2(0, 0)]` 视差背景的滚动值。1. 使用 Camera2D 时会自动计算、2. 无相机时需要手动管理滚动值。
    2. `scroll_limit_begin && scroll_limit_end [默认： Vector2(0, 0)]` 背景滚动的限制。如果相机超出这个限制，背景将停止滚动。
    3. `Ignore camera zoom` 为 `true` 时，`ParallaxLayer` 子元素将不受相机缩放的影响。
- `ParallaxLayer` ParallaxBackground 的子节点，用于创建视差滚动层。其常用属性如下：
    1. `motion_mirroring` 用于创建无限滚动的背景(一般设置得跟视口宽高一样)。
    2. `motion_scale ` 用于设置视差层滚动的运动速度。它表示视差层相对于主摄像机的运动速度比例。 

:::

<VideoCard title="Bilibili 视频教程" downloadLink="/godot/zips/parallax_background.7z">

<template #content>
<video-iframe :video-id="621037418"></video-iframe>
</template>

</VideoCard>
