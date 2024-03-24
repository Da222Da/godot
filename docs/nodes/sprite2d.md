<PageHeader content="Sprite2D: 显示 2D 纹理的节点" />

显示 2D 纹理的节点，可以显示较大图集纹理中的某一块区域，也可以是精灵表动画中的某一帧。

::: warning Sprite2D API

#### 继承关系

Object > Node > CanvasItem > Node2D > Sprite2D

#### 常用属性

-   `texture` 加载你要绘制的纹理资源。
-   `region_enabled` 是否从较大的图集纹理中裁剪纹理。
-   `region_rect` 设置裁剪纹理的区域。
    -   如果遇到区域大，纹理小的情况。可以配合`CanvasItem > texture_repeat:enabled` 对纹理进行重复平铺。

#### 快捷键

-   `按住 Shift + Ctrl，配合鼠标左键` 等比例缩放图像

:::
