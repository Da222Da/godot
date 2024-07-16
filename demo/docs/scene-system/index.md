# 场景系统

在游戏开发过程中，我们可以创建一个或多个场景，每个场景都包含了自己的场景内容、脚本逻辑以及游戏资源`例如，声音、动画`。

而我们可以借助 Godot 提供的场景系统来管理这些游戏场景。

<BasicConcept :data='[
  { title: "Node 节点", content: "构成场景的基本单位，可以是角色、相机、灯光等游戏对象。" },
  { title: "Scene 场景", content: "场景由无数个节点组成，可以被保存到磁盘上，然后被实例化到其他场景中。" },
  { title: "SceneTree 场景树", content: "场景树是一种组织和管理游戏中所有场景的层次结构。" },
  ]' 
/>

::: tip 基础知识

- **Node 节点**
  - `Node.get_node(path)` 根据节点路径获取节点
  - `Node.queue_free()` 在当前帧结束时，删除节点
- **SceneTree 场景树**
  - `Node.get_tree()` 获取场景树
  - `SceneTree.reload_current_scene()` 重新加载当前场景
- **常见操作**
  - 操作场景：
    - `Ctrl + N`新建一个场景
    - `Ctrl + Shift + O` 快速查找已有场景
  - 操作节点：
    - `Ctrl + A` 快速调出创建节点的对话框。
    - `Ctrl + D` 快速复制当前选中的节点。
    - `Ctrl + 鼠标左键` 同时选择多个节点。
  - 操作视图：
    - `F 键` 居中视图
    - `滚动鼠标滚轮` 缩放视图
    - `长按鼠标滚轮` 挪到视图

:::

::: danger 示例 & 实操

- [如何创建一个游戏场景？](./create-scene.md)
- [如何动态生成场景？](./dynamic-generation-scene.md)
- [如何切换场景，并添加过渡效果？](./change-scene.md)

:::
