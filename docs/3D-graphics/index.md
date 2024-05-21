# 3D 图形

<BasicConcept :data='[
  { title: "网格实例 MeshInstance", content: "通过加载3D模型文件（如OBJ、FBX等）来创建对象，适用于加载外部模型和静态几何形状。" },
  { title: "CSG 对象", content: "CSG 对象可以通过添加、减去或交集基本几何体来构建复杂的形状。适用于在运行时生成几何形状，而不需要预先创建模型文件。" },
  { title: "形变 Transform", content: "通过使用Transform，可以方便地对对象进行位置、旋转和缩放的操作。" , type: "danger"},
  { title: "轴锁定 Axis Lock", content: "用于限制对象只能在某些轴上的移动、旋转。" },
  { title: "形变基矩阵 Basis", content: "通常用于表示物体在 3D 空间中的方向。" },
  { title: "材质 Material", content: "通过改变物体外观的属性`如颜色、纹理等`，从而创建各种视觉效果。", type: "danger" },
  { title: "反照率 Albedo", content: "材质属性之一，用来定义物体的颜色和纹理。" },
  { title: "UV1", content: "材质属性之一，用来控制纹理在模型上的位置和平铺次数。" },
  ]' 
/>

::: tip 3D 图形 - 知识结构

-   `Node3D 节点` 最基础的 3D 对象
    -   3D 静态对象: `MeshInstance3D 节点`
    -   3D 动态对象：
        -   `CSGBox3D 节点` 盒子形状
-   光照：
    -   `DirectionalLight3D 节点` 太阳光
    -   `WorldEnvironment 节点` 世界环境
-   `Camera3D 节点` 摄像机

:::
