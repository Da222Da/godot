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

<!-- 
脚本：

- 简介：

1. 今天向大家介绍：“如何制作滚动视差背景”?
2. 滚动视差背景，是游戏开发中比较常见的一种特效，它可以让游戏中的背景看起来更加真实。
3. 滚动视差背景的实现原理是：将每个背景子元素的位置移动速度设置为不同的值，这样就能在 2D 游戏中创造一种产生视差效果，在这种效果中，远处的物体似乎比近处的物体移动得慢。
4. 在 Godot 中，我们可以使用 ParallaxBackground 节点 和 ParallaxLayer 节点，便能够轻松地创建滚动视差背景了。

- 场景设置
1. 首先，打开 Godot，导入游戏素材，将文件夹重命名为 “sprites”。（如果你想要视频中素材的话，可以打开这个网址，点击下载按钮即可。）
2. 在开始创建实际场景之前，我们需要对项目设置进行一些更改。打开控制面板
2. 然后，在场景中创建一个 ParallaxBackground 节点，并创建一个 ParallaxLayer 子节点。
3. 接着，创建一个 Sprite 子节点，将背景素材拖拽到纹理属性中，调节背景大小。
4. 如果，你是 Windows 系统的话，可以直接按住 Ctrl + D 键，快速地复制一个 ParallaxLayer 子节点。
5. 接着，将  Sprite 子节点中的纹理替换成 “star.png”，并多复制几个星星，拖拽到不同的位置。
6. 运行场景，测试一下效果。这时，我们发现背景并不会滚动起来。


3. 然后，选中 ParallaxLayer 子节点，将 motion_mirroring 属性的宽高设置得跟视口宽高一样。
4. 如果，你不知道游戏视口宽高的话，你可以打开项目设置面板进行查看。
 
-->