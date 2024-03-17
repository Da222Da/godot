# 粒子系统

Godot 给我们提供了一个强大的粒子系统，方便我们来创建和管理大量的小型粒子。

然而，**粒子的本质就是小图像**。至于粒子效果，就是动态生成一堆小图像，例如火花、烟雾、火焰、水滴等效果。从而为游戏增添视觉效果、让游戏更加生动。

::: tip 基础知识

-   基本概念：

    -   **Particles（粒子）**：每个粒子都是一个小的图形对象，具有自己的生命周期、位置等属性。
    -   **Emitter（发射器）**：定义粒子的发射源和发射属性，如发射速度、发射方向、发射频率等。
    -   **Material（材质）**：定义粒子的外观和纹理，可以通过材质来控制粒子的纹理、颜色等。
    -   **Processors（处理器）**：处理器可以对粒子进行额外的计算和操作，如重力、碰撞检测等。

-   内置节点：

    -   [GPUParticles2D: 粒子发射器](../nodes/particle/gpuparticles2d.md)
        -   [ParticleProcessMaterial: 贴图粒子材质](../nodes/particle/particle-process-material.md)

:::

::: danger 示例 & 实操

-   [实现一个爱心粒子效果？](./particle-love-demo.md)

:::
