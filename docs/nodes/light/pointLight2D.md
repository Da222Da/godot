<PageHeader content="PointLight2D 点光源" />

PointLight2D 用于创建场景中的点光源`类似于手电筒`，用于提供局部照明。

::: warning 相关 API

#### 继承关系

- Object > Node > CanvasItem > Node2D > Light2D > PointLight2D

#### 属性

- PointLight2D 类

  - `texture 纹理` 用于设置灯光外观
  - `texture_scale` 用于控制灯光的照射范围

- Light2D 类
  - `color 颜色` 用于设置灯光的颜色
  - `energy 能量` 用于设置灯光的强弱
  - Shadow 阴影
    1. `shadow_enabled 启用` 是否启用阴影
    2. `shadow_color 颜色` 设置阴影的颜色
    3. `shadow_filter 滤镜` 设置阴影的轮廓

:::
