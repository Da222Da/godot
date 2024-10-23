# UI 用户界面

在 Godot 中，用户界面（UI）用于创建和设计游戏的用户界面元素，如按钮、文本标签、滑块等，以便玩家与游戏进行交互。

<BasicConcept :data='[
  { title: "锚点 Anchor", content: "用于控制节点位置和大小。" },
  { title: "容器 Container", content: "容器可以包含多个子节点，以便控制它们的位置。" },
  { title: "布局 Layout", content: "是指控件节点在在界面中的排列方式。" },
  ]' 
/>

::: danger 常见问题

- [在 Godot 游戏中，如何复用文字主题预设？](./reuse-font-theme.md)
- [如何给 UI 节点设置颜色？](./set_ui_node_color.md)

:::

::: tip UI 用户界面 - 知识体系

- **画布：**
  - `CanvasLayer 节点` 画布层 `默认图层索引为 -1`
- **显示内容：**
  - `Label 节点` 用于显示文本
  - `TextureRect 节点` 用于显示图像
  - `VideoStreamPlayer 节点` 用于播放视频
  - `Button 节点` 普通按钮
  - **进度条：**
    - `ProgressBar 节点` 普通进度条
    - `TextureProgress 节点` 纹理进度条
- **布局：**
  - `Control 节点` 用于其他节点的父级容器
  - `HBoxContainer 节点` 水平排列子节点
  - `VBoxContainer 节点` 垂直排列子节点
  - `GridContainer 节点` 网格排列子节点
  - `MarginContainer 节点` 添加边距的容器

:::
