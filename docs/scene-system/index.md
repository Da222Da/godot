# 场景系统

在游戏开发过程中，我们可以创建一个或多个场景，每个场景都包含了自己的场景内容、脚本逻辑以及游戏资源`例如，声音、动画`。

而我们可以借助 Godot 提供的场景系统来管理这些游戏场景。

::: tip 背景知识

- [场景与节点之间的关系？](./what-scene.md)

:::

::: danger 示例 & 实操

- [如何创建一个游戏场景？](./create-scene.md)

:::

::: warning 相关 API

- **Node 类** 所有场景对象的基类：
  - `get_tree()` 获取该节点所在的场景树对象 SceneTree。
  - `_ready()` 当节点及其子节点都已经进入场景树的时候，调用一次该函数。
  - `_process(delta)` 用于在每帧开始时执行代码。
    - `参数 delta` 表示自上一帧结束时到当前帧结束的时间间隔。
- **SceneTree 类** 用于管理场景中节点的层次结构以及场景本身：

  - `quit()` 退出当前应用程序。
  - `change_scene_to_file(path)` 将正在运行的场景更改为指定场景。

- **GDScript 脚本操作场景 && 节点的常用 API：**

  - `Node.get_tree()` 获取该节点所在的场景树节点对象 SceneTree。
  - `SceneTree.quit()` 退出当前应用程序。
  - `SceneTree.change_scene_to_file(path)` 根据 path 实例化一个新场景，然后将正在运行的场景更改为该场景。

- **好用的快捷键：**
  - `Ctrl + A` 快速调出创建节点的对话框。
  - `Ctrl + D` 快速复制当前选中的节点。

:::
