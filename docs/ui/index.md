# 用户界面

在 Godot 中，用户界面（UI）用于创建和设计游戏的用户界面元素，如按钮、文本标签、滑块等，以便玩家与游戏进行交互。

::: tip

#### 基础概念

-   `锚点 Anchor` 用于控制节点位置和大小。
-   `容器 Container` 容器可以包含多个子节点，以便控制它们的位置。
-   `布局 Layout` 是指控件节点在在界面中的排列方式。

#### 常见问题

-   [在 Godot 游戏中，如何复用文字主题预设？](./reuse-font-theme.md)
-   [如何给 UI 节点设置颜色？](./set_ui_node_color.md)

#### 控制节点 Control Nodes

-   `CanvasLayer 节点` 画布层 `默认图层索引为 -1`
-   `Control 节点` 用于其他节点的父级容器
-   **容器 Container：**
    1. `HBoxContainer 节点` 水平排列子节点
    2. `VBoxContainer 节点` 垂直排列子节点
    3. `GridContainer 节点` 网格排列子节点
    4. `MarginContainer 节点` 添加边距的容器
-   **进度条 Progress：**
    1. `ProgressBar 节点` 普通进度条
    2. `TextureProgress 节点` 纹理进度条
-   `Button 节点` 普通按钮
-   `Label 节点` 用于显示文本
-   `TextureRect 节点` 用于显示图像
-   `ColorRect 彩色矩形` 用于显示单色矩形的控件
-   `VideoStreamPlayer 节点` 用于播放视频

:::

:::danger 示例 && 实操

:::
