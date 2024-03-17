<PageHeader content="精灵帧动画和关键帧动画有什么区别？" />

::: tip 什么精灵表动画？

精灵表动画的工作原理，就是快速播放每一帧画面形成的动画。所以，这类动画需要大量的美术资源。

![sprite-sheet.png](/images/sprite-sheet.png)

:::

::: tip 什么是关键帧动画？

关键帧动画的工作原理，就是先设置关键性的画面帧，至于，关键帧与关键帧之间的 **中间帧(TweenFrame)**，则是由**插值算法**自动计算的。然后快速播放这些画面帧形成的动画。

关键帧动画是现在最常用的一种动画技术。它允许您在时间轴上指定对象的属性值。当您播放动画时，对象的属性将在关键帧之间平滑过渡。

![keyframe-animation.png](/images/keyframe-animation.png)

:::
