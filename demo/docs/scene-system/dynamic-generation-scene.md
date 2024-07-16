<PageHeader content="如何动态生成游戏场景？" />

<VideoCard title="Bilibili 视频教程" downloadLink="/godot/zips/dynamic-generation-scene.zip">
<template #content>
<video-iframe :video-id="1101430197"></video-iframe>
</template>
</VideoCard>

<!--
视频脚本：

### 简介

本期内容，我们将学习如何动态生成游戏场景？

这里的动态生成游戏场景？指在游戏运行过程中通过代码逻辑来生成游戏场景。

例如，在游戏中发射飞弹时，我们不可能手动创建飞弹场景吧？

这时，便可以利用脚本代码来动态生成飞弹场景。

这也就是本期内容关注的重点了。

接下来，我将用一个简单的小例子来演示如何动态生成游戏场景。


### 准备工作

为了方便演示，我事先创建了一个空项目。

并将项目所需的图片资源提前导入进来了【Dialog: 如果想获取这些图片资源的话，可以访问我的 Github 网站（https://da222da.github.io/godot/scene-system/dynamic-generation-scene.html），直接下载】。

先创建一个 AnimatedSprite2D 子节点，并改名为 Demon

然后，找到检查器面板中的 Sprite Frames 属性，新建 SpriteFrames，用于新增和管理精灵帧动画。

接着，打开动画帧面板，点击“从精灵表中添加帧”，选择导入的图片 idle.png，

然后，播放选中动画，你就会看到一个点头哈腰的恶魔。

接下来，新增一个攻击动画 attack，和 idle 动画一样，为其添加画面帧【快进】。

好了，再播放看看【FPS 10】，感觉他要用他的尖下巴戳我【屁】。

由于 attack 攻击动画不需要循环播放，这里我们取消掉“循环播放”选项，

最后，按住 Ctrl + S 键，保存一下场景。

接下来，新增一个火球场景 FireBall，由于跟创建恶魔场景差不多，我就帮大家快进了【调整一下火球的大小】。
到此为止，我们的准备工作就差不多了。

接下来，我们来让恶魔发射火球，顺便学习一下如何动态生成场景。

### 重点内容

1. 给恶魔场景 Demon 新增一个脚本
    - 自定义攻击信号 signal_attack
    - 监听空格键被按下，并发射攻击信号 signal_attack

2. 新增一个主场景 main
    - 再把恶魔场景 demon 实例化到主场景 main 中，顺便调整一下，恶魔的位置、大小。
    - 给主场景 main 新增一个脚本
        - 监听恶魔发射攻击信号 signal_attack
        - 监听动画结束信号 animation_finished, 并在攻击动画结束的时候，【动态生成火球场景】以及播放静止动画
        - 多生成几个火球

3. 给火球场景 FireBall 新增一个脚本：
    - 让火球以每秒 500 像素的速度向左移动

### 结尾

-->
