<h2 style="text-align: center;">基于 Godot 引擎的 2D 游戏 —— 上手指南 </h2>

<Map :mapdata="mapdata"></Map>

<script setup>
const mapdata = [
    { type: "rectangle", text: "Godot是什么？", link:"/appendix/what-godot.md" },
    { type: "rectangle", text: "如何安装 Godot 引擎？", link:"/appendix/install.md" },
    { type: "rectangle", text: "如何创建一个游戏项目？", link:"/appendix/create-project.md" },
    { type: "rectangle", text: "如何创建一个游戏场景？", link:"/scene-system/create-scene.md" },
    // { type: "rectangle", text: "如何创建精灵表动画？" },
    { type: "rectangle", text: "如何创建一个 gdscript 脚本？", link:"/gdscript/create-gdscript.md" },
    // { type: "rectangle", text: "梳理 GDScript 编程语言的语法约定？" },
    { type: "rectangle", text: "什么是二维向量 Vector2？", link:"/2D-graphics/vector2.md" },
    { type: "rectangle", text: "什么是增量时间 DeltaTime？", link:"/gdscript/fps-deltatime-understand.md" },
    { type: "rectangle", text: "如何获取用户输入？", link:"/input-handling/get-user-input.md" },
    // { type: "rectangle", text: "如何自定义输入映射？" },
    { type: "rectangle", text: "如何连接 Godot 的内置信号？", link:"/gdscript/signal-builtin.md" },
    { type: "rectangle", text: "如何创建 Godot 自定义信号？", link:"/gdscript/signal-custom.md" },
    { type: "rectangle", text: "如何动态生成游戏场景？", link:"/scene-system/dynamic-generation-scene.md" },
    // { type: "rectangle", text: "如何对节点进行分类管理？" },
    // { type: "rectangle", text: "如何制作滚动视差背景？" },
    // { type: "rectangle", text: "如何检测物体之间的碰撞？" },
    { type: "ellipse", text: "复刻游戏《太空射手》", link:"/game-copy/space-shooter.md" },
]

</script>
