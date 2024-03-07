<PageHeader content="CanvasItem: 画布节点" />

CanvasItem 是二维空间中所有对象的抽象基类。

::: warning CanvasItem API

#### 继承关系

Object > Node > CanvasItem

### 常用属性

- `visible` 是否可见。
- `modulate` 调节画布颜色，并影响子节点的画布颜色。
- `self_modulate` 调节画布颜色，不会影响子节点的画布颜色。
- `texture_filter` 设置画布中纹理的过滤模式
- `texture_repeat` 设置画布中纹理的平铺模式

#### 常用方法

- `get_global_mouse_position()` 返回该对象在全局坐标系中的鼠标位置。

:::
