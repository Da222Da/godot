# 3D 图形

::: tip 3D 图形 - 知识结构

#### 基础概念：

1. 网格实例`MeshInstance`: 3D 场景中可见的三维模型`如立方体、球体等`。
2. CSG 系统`ConstructiveSolidGeometry`: 用于创建基本的几何形状`如立方体、球体等`
3. 材质`Material`: 通过改变物体外观的属性`如颜色、纹理等`，从而创建各种视觉效果。
    - 反照率`Albedo`: 是指物体表面对入射光线的反射能力，用来定义物体的颜色和纹理。
    - `UV1`: 是指网格的第二组 UV 坐标，用来控制纹理在模型上的位置和平铺次数。

#### 内置节点：

-   3D 模型：`Node3D 最基础的3D对象`、`CSGBox3D 立方体`、`MeshInstance3D 网格实例`
-   光照：`DirectionalLight3D 太阳光`、`WorldEnvironment 世界环境`
-   摄像机：`Camera3D 摄像机`

:::
