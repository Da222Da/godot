# 场景系统

在游戏开发过程中，我们可以创建一个或多个场景，每个场景都包含了自己的场景内容、脚本逻辑以及游戏资源`例如，声音、动画`。

而我们可以借助 Godot 提供的场景系统来管理这些游戏场景。

::: tip 基础知识

- [场景与节点之间的关系？](./what-scene.md)

:::

::: danger 示例 & 实操

- [如何创建一个游戏场景？](./create-scene.md)
- [如何动态生成场景？](./dynamic-generation-scene.md)
<!-- -   [如何对节点进行分类管理？](./group.md) -->

:::

::: warning 相关 API

- **操作场景 API：**

  - 实例化节点对象
    - `@GDScript.preload(scene_path) -> Resource>PackedScene` 预加载场景文件
    - `PackedScene.instantiate() -> Node` 实例化场景
  - 退出游戏
    - `Node.get_tree()` 获取该节点所在的场景树节点对象 SceneTree。
    - `SceneTree.quit()` 退出当前应用程序。
  - 切换场景
    - `Node.get_tree()` 获取该节点所在的场景树节点对象 SceneTree。
    - `SceneTree.change_scene_to_file(path)` 实例化一个新场景用来替换正在运行的场景。

- **操作节点 API：**

  - 获取节点
    - `Node.get_children()` 获取节点的子节点，返回一个数组。

- **好用的快捷键：**
  - `Ctrl + A` 快速调出创建节点的对话框。
  - `Ctrl + D` 快速复制当前选中的节点。
  - `Ctrl + 鼠标左键` 同时选择多个节点。

:::
