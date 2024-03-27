import{_ as n,o as a,c as s,e as t,a as e,b as o}from"./app-546c4c18.js";const c={},r=e("h1",{id:"马里奥",tabindex:"-1"},[e("a",{class:"header-anchor",href:"#马里奥","aria-hidden":"true"},"#"),o(" 马里奥")],-1);function i(d,l){return a(),s("div",null,[r,t(`
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
 `)])}const _=n(c,[["render",i],["__file","mario.html.vue"]]);export{_ as default};
