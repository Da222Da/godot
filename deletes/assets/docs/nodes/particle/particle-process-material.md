<PageHeader content="ParticleProcessMaterial: 贴图粒子材质" />

在 Godot 中，`ParticleProcessMaterial 节点` 使用纹理贴图的方式，来定制粒子的外观和行为。

不过，需要注意的是，`ParticleProcessMaterial 节点` 要和与粒子系统节点`例如，CPUParticles2D`配合使用。

::: warning 相关 API

#### 继承关系

Object > RefCounted > Resource > Material > ParticleProcessMaterial

#### 属性

- 方向
  - `direction` 指定粒子发射方向的单位向量。
  - `spread` 指定每个粒子的初始方向范围`默认值 45 => [-45, +45]`。
- `Emission Shape` 设置粒子的发射区域
  - `Shape` 发射区域的形状
- `gravity` 设置每个粒子所受重力的影响。
- `initial_velocity_min && initial_velocity_max` 设置粒子的初始速度范围。
- `scale_min ** scale_max` 设置粒子缩放范围。
- `color` 设置初始颜色
- `color_ramp` 设置颜色渐变

:::
