# 输入处理

::: tip 基础知识

-   **获取用户输入的方式：**
    -   \_input(event) 内置函数
    -   Input 单例类
-   **输入映射**：将输入设备（键盘、鼠标等）的输入事件（如“按下空格键”）映射到游戏操作中。

:::

::: danger 示例 & 实操

-   [获取用户输入的两种方式？](./get-user-input.md)
-   [如何自定义输入映射？](./custom-input-map.md)

:::

::: warning Godot 内置对象 API

#### Input 单例类：用于检测和响应各种输入事件

-   `is_action_pressed(action_name)` : 检测某一按钮是否被按下(长按有效)。
-   `is_action_just_pressed(action_name)` : 检测某一按钮是否被按下(仅触发一次)。
-   `get_axis(-a, +a)`:通过指定两个动作来获取轴的输入，一个是负的，一个是正的。
-   `get_vector(-x, +x, -y, +y)`:通过指定正负 X 和 Y 轴的四个动作来获取输入向量。

#### Node 所有场景对象的基类

-   `_input(event: InputEvent)` 有输入事件时会被调用。

:::
