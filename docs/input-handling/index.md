# 用户输入

用户输入是指玩家通过输入设备`键盘、鼠标、手柄或触摸屏等`与游戏进行互动的过程。

而 Godot 引擎提供了一系列强大的功能，帮助我们检测、并响应用户输入。

::: tip 用户输入 —— 知识结构

- **InputEvent 类： 各种输入事件的抽象基类**
  - `is_action_pressed(action) 方法` 如果指定动作正在被按下，则返回 true。
  - `is_action_released(action) 方法` 如果指定动作被释放了，则返回 true。
  - `is_action_just_pressed(action) 方法` 只在用户按下按钮的那一帧中为 true。
- **Input 单例类: 用于检测和响应各种输入事件**
  - `Input.get_axis(a1, a2)`通过指定两个动作来获取轴的输入`a1 = -1 & a2 = 1 & d=0`。
- **Node.\_input(event) 内置函数** 当玩家触发输入事件时，就会触发该函数。

:::

::: danger 常见问题

- [如何使用 GDScript 脚本来监听用户输入？](./get-user-input.md)
- [如何自定义输入动作？](./custom-input-map/index.md)

:::
