::: tip

本站的目的是为了介绍如何使用 [Godot 引擎](https://godotengine.org) 进行游戏开发的。

希望能够帮助更多小伙伴开启独立游戏制作的大门。

:::

<Map :mapdata="mapdata"></Map>

<script setup>
const mapdata = [
    { type: "rectangle", text: "Godot是什么？", link:"/else/what-godot.md" },
    { type: "rectangle", text: "如何安装 Godot 引擎？", link:"/else/install.md" },
    { type: "rectangle", text: "如何创建一个游戏项目？", link:"/else/create-project.md" },
    { type: "rectangle", text: "玩转场景系统？", link:"/scene-system/index.md" },
    { type: "rectangle", text: "玩转 2D 图形的各种操作？", link:"/2D-graphics/index.md" },
    { type: "rectangle", text: "玩转 GDScript 脚本语言？", link:"/gdscript/index.md" },
    { type: "rectangle", text: "玩转用户输入的各种情况？", link:"/input-handling/index.md" },
    { type: "rectangle", text: "建立定时器的观念？", link:"/timer/index.md" },
    { type: "rectangle", text: "玩转物理系统？", link:"/physic-system/index.md" },
    { type: "ellipse", text: "复刻游戏《太空射手》", link:"/game-copy/space-shooter.md" },
]

</script>
