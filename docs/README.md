::: tip

本站的目的是为了介绍如何使用 [Godot 引擎](https://godotengine.org) 进行游戏开发的。

希望能够帮助更多小伙伴开启独立游戏制作的大门。

:::

<Map :mapdata="mapdata"></Map>

<script setup>
const mapdata = [
    { type: "rectangle", text: "Godot是什么？", link:"/appendix/what-godot.md" },
    { type: "rectangle", text: "如何安装 Godot 引擎？", link:"/appendix/install.md" },
    { type: "rectangle", text: "如何创建一个游戏项目？", link:"/appendix/create-project.md" },
    { type: "rectangle", text: "玩转场景系统？", link:"/scene-system/index.md" },
    { type: "rectangle", text: "玩转 2D 图形的各种操作？", link:"/2D-graphics/index.md" },
    { type: "rectangle", text: "玩转 GDScript 脚本语言？", link:"/gdscript/index.md" },
    { type: "rectangle", text: "玩转用户输入的各种情况？", link:"/input-handling/index.md" },
    { type: "rectangle", text: "玩转各种 2D 动画？", link:"/input-handling/index.md" }, 
    { type: "rectangle", text: "玩转物理系统与碰撞检测？", link:"/physic-system/index.md" },
    { type: "ellipse", text: "复刻游戏《太空射手》", link:"/game-copy/space-shooter.md" },
]

</script>

<!--
- 场景系统：如何动态生成场景？
- 物理系统：如何区分物体和物理体？
- 物理系统：如何检测物体之间的碰撞？ area2d
- 场景系统：如何对节点进行分类管理？ group
- 用户输入：如何自定义输入映射？

 -->
