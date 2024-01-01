import{_ as s,r as i,o as a,c as t,e as r,a as l,b as o,d as e}from"./app-19f36e20.js";const c={},_=l("h1",{id:"马里奥",tabindex:"-1"},[l("a",{class:"header-anchor",href:"#马里奥","aria-hidden":"true"},"#"),o(" 马里奥")],-1),d=l("p",null,"Collision layer 和 Collision Mask 是 Godot 中用于控制碰撞检测的两个属性。Collision layer 用于指定一个对象可以与哪些其他对象发生碰撞，而 Collision Mask 用于指定一个对象可以与哪些其他对象的哪些部分发生碰撞。",-1),C=l("p",null,"你可以在 Inspector 窗口中找到 Collision layer 和 Collision Mask 属性。Collision layer 是一个列表，其中包含了所有可用的碰撞层。每个碰撞层都有一个唯一的名称，你可以使用这个名称来引用它。Collision Mask 是一个二进制掩码，其中每个位表示一个碰撞层。如果一个对象的 Collision Mask 中某个位为 1，那么它就可以与具有相同位设置的其他对象发生碰撞。",-1),h=l("p",null,"以下是 Collision layer 和 Collision Mask 的一些示例：",-1),m=l("ul",null,[l("li",null,'一个对象的 Collision layer 设置为 "Player"，而另一个对象的 Collision layer 设置为 "Enemy"。这两个对象将不会发生碰撞。'),l("li",null,'一个对象的 Collision layer 设置为 "Player"，而另一个对象的 Collision Mask 设置为 "Player"。这两个对象将会发生碰撞。'),l("li",null,'一个对象的 Collision layer 设置为 "Player"，而另一个对象的 Collision Mask 设置为 "Enemy"。这两个对象将不会发生碰撞。')],-1),u=l("p",null,"Collision layer 和 Collision Mask 可以用来实现各种各样的碰撞检测效果。例如，你可以使用它们来创建不同的游戏区域，或者让玩家与不同的敌人发生不同的碰撞效果。",-1),p=l("p",null,"如果你想了解更多关于 Collision layer 和 Collision Mask 的信息，你可以参考 Godot 的官方文档：",-1),y={href:"https://docs.godotengine.org/en/stable/tutorials/physics/collision_layers_and_masks.html",target:"_blank",rel:"noopener noreferrer"},k={href:"https://docs.godotengine.org/en/stable/tutorials/physics/collision_masks.html",target:"_blank",rel:"noopener noreferrer"};function f(M,g){const n=i("ExternalLinkIcon");return a(),t("div",null,[_,r(`
视频脚本：

- 简介
- 项目配置
    1. 打开 Godot, 在合适的位置创建项目，项目名称为“马里奥”，文件夹名称叫 mario
    2. 在主场景中，创建一个根节点 Node2D，改名为 main，
    3. 新建场景文件夹 scenes ，再按住 Ctrl + S 键，将主场景 main 保存到 scenes 文件夹中。
    4. 然后，创建一个资源文件夹 assets，将我们游戏中会用素材文件拖到 assets 文件夹中。
    5. 打开项目设置面板，
        - 将拉伸模式设置为 canvas_items，
        - 接着，选中“输入映射”，设置游戏动作映射：
            - 将“A 键”映射到“向左移动”
            - 将“D 键”映射到“向右移动”
            - 将“S 键”映射到“下蹲”
            - 将“W 键”映射到“起身”
            - 将“J 键”映射到“跳跃”
            - 将“K 键”映射到“射击”
        - 接着，选中“常规 > 渲染 > 环境”，将“默认清屏颜色”设置为默认 049cd8。
- 创建瓦片地图
    1. 在主场景 main 下，创建一个 TileMap 节点，接着，“新建 TileSet”，再将 “GroundBlock.png” 拖到图块区域，选中“矩形”和“基础图块”，然后按住鼠标右键，生成游戏地面。
    2. 接下来，我们要为游戏地面添加物理碰撞层，不然，我们的人物精灵马里奥会直接掉下去。选中“TileMap 检查器 > Tile Set”
 `),d,C,h,m,u,p,l("ul",null,[l("li",null,[l("a",y,[o("Collision layers"),e(n)])]),l("li",null,[l("a",k,[o("Collision masks"),e(n)])])])])}const b=s(c,[["render",f],["__file","mario.html.vue"]]);export{b as default};
