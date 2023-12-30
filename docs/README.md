# 简介

::: tip

本站是为了介绍如何使用 [Godot 引擎](https://godotengine.org) 进行游戏开发的。

希望能够帮助更多小伙伴开启游戏制作的大门。

:::

<Map :mapdata="mapdata"></Map>

<script setup>
// const mapdata = [
//     { type: "rectangle", x: 10, y: 100, text: "什么 Godot 引擎？" },
//     { type: "rectangle", x: 240, y: 100, text: "如何安装 Godot 引擎？" },
//     { type: "ellipse", x: 580, y: 120, text: "复刻游戏《太空射手》" },
// ]
const mapdata = [
    { type: "rectangle", text: "什么 Godot 引擎？" },
    { type: "rectangle", text: "如何安装 Godot 引擎？" },
    { type: "ellipse", text: "复刻游戏《太空射手》" },
]
</script>
