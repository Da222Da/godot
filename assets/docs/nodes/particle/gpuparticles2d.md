<PageHeader content="GPUParticles2D: 粒子发射器：" />

在 Godot 中，`GPUParticles2D节点`是用来创建基于 GPU 的 2D 粒子效果的。它可以实现高性能的粒子系统，可以在屏幕上呈现大量的粒子而不会降低性能。

您可以使用 GPUParticles2D 节点来创建各种粒子效果，如火焰、烟雾、火花等。您可以通过调整节点的属性来控制粒子的外观、行为和运动方式。

::: warning 相关 API

#### 继承关系

Object > Node > CanvasItem > Node2D > GPUParticles2D

#### 属性

- GPUParticles2D 类:

  - `process_material` 用于处理粒子效果的材质。也就是自定义粒子的外观和行为：
    - `新增 ParticleProcessMaterial` 使用纹理贴图的方式，来实现粒子的外观和行为。
    - `新增 ShaderMaterial` 使用着色器 Shader，来实现粒子的外观和行为。
  - `emitting` 用于控制粒子系统是否正在发射粒子。
  - `amount` 用于控制粒子系统发射的粒子数量。

- Time 类:

  - `lifetime` 用于设置每个粒子存在的时间。
  - `one_shot` 用于确定粒子系统是连续发射粒子还是仅发射一次。
  - `preprocess` 粒子系统启动时，好像已经运行了这么多秒。

- CanvasItem 类
  - `Material > particles_animation` 用于编辑精灵表图像资源。

:::
