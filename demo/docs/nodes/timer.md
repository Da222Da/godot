<PageHeader content="Timer 定时器节点" />

在 Godot 中，定时器节点是一种特殊类型的节点，它允许您在场景中创建和管理定时器。

::: warning Timer API

-   属性：
    -   `wait_time` ：定时器节点在执行代码之前等待的时间间隔（以秒为单位）。
    -   `one_shot` ：是否执行一次。
    -   `autostart` 是否自动启动。
    -   `paused` 设置该属性可以暂停定时器。
    -   `time_left` 查看定时器还剩多长时间。
-   方法：
    -   `start()`：启动定时器。
    -   `stop()`：停止定时器。
-   内置信号：
    -   `timeout()` 当计时器到 0 时发出。

:::
