::: tip

本站的目的是为了介绍如何使用 [Godot 引擎](https://godotengine.org) 进行游戏开发的。

希望能够帮助更多小伙伴开启独立游戏制作的大门。

:::

<h2 style="text-align: center;">Godot 2D 游戏开发指南图 <Badge text="探索中……"  /></h2>

<Map :mapdata="mapdata"></Map>

<script setup>
const mapdata = [
    { type: "rectangle", text: "Godot是什么？", link:"/appendix/what-godot.md" },
    { type: "rectangle", text: "如何安装 Godot 引擎？", link:"/appendix/install.md" },
    { type: "rectangle", text: "如何创建一个游戏项目？", link:"/appendix/create-project.md" },
    { type: "rectangle", text: "如何创建一个游戏场景？", link:"/scene-system/create-scene.md" },
    { type: "rectangle", text: "如何创建一个 gdscript 脚本？", link:"/gdscript/create-gdscript.md" },
    { type: "rectangle", text: "什么是二维向量 Vector2？", link:"/2D-graphics/vector2.md" },
    { type: "rectangle", text: "什么是增量时间 DeltaTime？", link:"/gdscript/fps-deltatime-understand.md" },
    { type: "rectangle", text: "如何连接 Godot 的内置信号？？", link:"/gdscript/signal-builtin.md" },
    { type: "rectangle", text: "如何创建 Godot 自定义信号？", link:"/gdscript/signal-custom.md" },
    { type: "rectangle", text: "如何获取用户输入？", link:"/input-handling/get-user-input.md" },
    { type: "rectangle", text: "如何动态生成游戏场景？", link:"/scene-system/dynamic-generation-scene.md" },
    { type: "ellipse", text: "复刻游戏《太空射手》", link:"/game-copy/space-shooter.md" },
]

</script>

<!--

- 物理系统：如何区分物体和物理体？
- 物理系统：如何检测物体之间的碰撞？ area2d
- 场景系统：如何对节点进行分类管理？ group
- 用户输入：如何自定义输入映射？

-->
