<PageHeader content="精灵帧动画和关键帧动画有什么区别？" />

::: tip 什么精灵表动画？

告诉游戏“以非常快的速度播放精灵表中的第 1、2、3、4 和 5 帧”，这样角色看起来就好像在移动了。

![sprite-sheet.png](/images/sprite-sheet.png)

:::

::: tip 什么是关键帧动画？

关键帧动画是现在最常用的一种动画技术。它允许您在时间轴上指定对象的属性值。当您播放动画时，对象的属性将在关键帧之间平滑过渡。

而**关键帧则是动画中特定时间点的状态** 。当您添加关键帧时，你可以指定对象的属性在该时间点的值。当您播放动画时，对象的属性将在关键帧之间平滑过渡。

![keyframe-animation.png](/images/keyframe-animation.png)

:::

::: warning 关键帧与中间帧的区别？

在制作关键帧动画时，你只需要设置 **关键帧(KeyFrame)** 即可，而不是自己绘制每个帧。至于，关键帧与关键帧之间的 **中间帧(TweenFrame)**，则是由**插值算法**自动计算的。如下图所示：

![keyframe-animation.png](/images/keyframe-animation.png)

:::
