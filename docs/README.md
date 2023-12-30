::: tip

本站的目的是为了介绍如何使用 [Godot 引擎](https://godotengine.org) 进行游戏开发的。

希望能够帮助更多小伙伴开启游戏制作的大门。

:::

<Map :mapdata="mapdata"></Map>

<script setup>
const mapdata = [
    { type: "rectangle", text: "Godot是什么？", link:"/quickstart/what-godot.md" },
    { type: "rectangle", text: "如何安装 Godot 引擎？", link:"/quickstart/install.md" },
    { type: "rectangle", text: "如何创建一个游戏项目？", link:"/quickstart/create-project.md" },
    { type: "rectangle", text: "如何创建一个游戏场景？", link:"/scene-system/create-scene.md" },
    { type: "rectangle", text: "如何创建一个 gdscript 脚本？", link:"/gdscript/create-gdscript.md" },
    { type: "ellipse", text: "复刻游戏《太空射手》", link:"/game-copy/space-shooter.md" },
]
</script>
