# 用户输入

用户输入是指玩家通过输入设备`键盘、鼠标、手柄或触摸屏等`与游戏进行互动的过程。

而 Godot 引擎提供了一系列强大的功能，帮助我们检测、并响应用户输入。

::: tip 用户输入 —— 知识结构

1. Input 单例类: 用于检测和响应各种输入事件
    - `Input.is_action_pressed(action)` 如果正在按下指定的输入动作，则返回 true。
    - `Input.is_action_just_pressed(action)` 只在用户按下按钮的那一帧中为 true。
    - `Input.get_axis(a1, a2)`通过指定两个动作来获取轴的输入`a1 = -1 & a2 = 1 & d=0`。

:::

::: danger 常见问题

-   [监听用户输入的两种方式？](./get-user-input.md)
-   [如何添加新的输入动作？](./custom-input-map/index.md)

:::
