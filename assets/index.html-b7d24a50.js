import{_ as a,r as o,o as c,c as r,d as t,a as e,w as s,b as i,e as p,f as d}from"./app-ed0390b9.js";const _="/godot/images/tile-set.png",m={},u=d('<p>TileMap 可以帮助我们快速地创建 2D 游戏地图，这比一个接一个地放置单个的 Sprite2D 节点快了不止一点。除此之外，TileSet 还能直接添加物理层等强大功能。</p><p>总之，<strong>TileMap 是创建和管理 2D 网格地图</strong>的不二之选。</p><div class="custom-container tip"><p class="custom-container-title">TileMap 瓦片地图是什么？</p><p>瓦片地图 TileMap，是指使用<code>瓦片集 TileSet</code>中的图块，在游戏中绘制的地图。</p></div><div class="custom-container tip"><p class="custom-container-title">TileSet 图块集是什么？</p><p>TileSet 是指用于创建游戏地图的可用图块集合，它由无数个瓦片<code>tile</code>组合而成，如下图所示。</p><p>除此之外，Godot 游戏引擎还允许我们对 TileSet 里面的图块进行编辑，例如添加物理行为等。</p><p><img src="'+_+'" alt="tile-set"></p></div>',4),T={class:"custom-container danger"},h=e("p",{class:"custom-container-title"},"操作 && 示例",-1);function f(g,S){const l=o("PageHeader"),n=o("RouterLink");return c(),r("div",null,[t(l,{content:"TileMap && TileSet 瓦片地图："}),u,e("div",T,[h,e("ul",null,[e("li",null,[t(n,{to:"/nodes/tilemap/set-tileset-physics-layers.html"},{default:s(()=>[i("图文：如何在 TileSet 中设置物理层？")]),_:1})]),e("li",null,[t(n,{to:"/nodes/tilemap/tileset-sharing.html"},{default:s(()=>[i("图文：如何在不同的场景下，共享同一份图块集资源？")]),_:1})])])]),p(` ::: warning 相关 API

#### TileMap API

-   继承关系\`Object > Node > CanvasItem > Node2D > TileMap\`

-   属性:

    -   \`tile_set\` 加载图块集资源。

-   方法:

    -   \`add_layer()\` 添加图层。
    -   \`set_layer_enabled()\` 是否启用图层。

-   快捷键：
    -   \`鼠标左键\`绘制图块
    -   \`鼠标右键\`删除图块
    -   按住\`Ctrl 键 + 鼠标左键\`，可以吸取已经绘制出来的图块。

#### TileSet API

-   继承关系\`Object > RefCounted > Resource > TileSet\`

-   属性:

    -   \`tile_shape\` 图块形状。
    -   \`tile_size\` 图块大小。

::: `)])}const x=a(m,[["render",f],["__file","index.html.vue"]]);export{x as default};
