<PageHeader content="Node: 所有场景对象的基类" />

::: warning Node API

#### 方法

-   `\_ready()` 当节点被加载到节点树中，准备渲染的时候，该函数就会被执行。
-   `\_process(delta)` 该函数就在游戏每一帧渲染之前被执行。
-   `_input(event: InputEvent)` 有输入事件时会被调用。
-   `queue_free()` 将节点放入队列中，在当前帧结束的时候，销毁。

:::
