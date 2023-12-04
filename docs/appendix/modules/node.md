# Node 基类

Node 类，所有 Godot 场景对象的基类，所有的场景对象均继承该类。常用的方法有：

- `_ready() virtual`: 当节点第一次进入场景树时调用，往往用来设置节点的默认状态。
- `_process(delta: float) virtual`: 每帧调用一次，delta 是自上一帧结束时到当前帧结束的时间间隔。
- `_input(event: InputEvent) virtual`: 当节点接收到输入事件时，该函数会被调用。
- 节点操作：
    - `get_parent()`: 返回当前节点的父节点，如果节点缺少父节点，则返回 null。
    - `get_node(path: NodePath)` 根据节点路径来获取节点对象，例如 `get_node(".") 获取当前节点`。
    - `add_child(node)` 添加子节点
    - `queue_free()` 在当前帧结束的时候，删除该节点。


::: danger 什么是虚拟方法？

虚拟方法（Virtual Methods），是指可以在子类中被重写的方法。例如 _ready()、_process(delta)等等

:::