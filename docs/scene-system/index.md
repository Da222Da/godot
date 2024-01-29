# 场景系统

在游戏开发过程中，我们可以创建一个或多个场景，每个场景都包含了自己的场景内容、脚本逻辑以及游戏资源`例如，声音、动画`。

而我们可以借助 Godot 提供的场景系统来管理这些游戏场景。

::: tip 背景知识

-   [场景与节点之间的关系？](./what-scene.md)
    -   [节点](./what-scene.md)
    -   [场景](./what-scene.md)

:::

::: danger 示例 & 实操

-   [如何创建一个游戏场景？](./create-scene.md)

:::

::: warning 相关 API

-   GDScript 脚本操作场景 && 节点的常用 API：
    -   `Node.get_tree()` 获取该节点所在的场景树节点对象 SceneTree。
    -   `SceneTree.quit()` 退出当前应用程序。
    -   `SceneTree.change_scene_to_file(path)` 根据 path 实例化一个新场景，然后将正在运行的场景更改为该场景。

:::
