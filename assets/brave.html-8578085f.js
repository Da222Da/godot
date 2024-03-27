import{_ as t,r as l,o,c as s,a as e,d as i,w as c,b as n,e as a}from"./app-546c4c18.js";const d={},_=e("h1",{id:"勇者传说",tabindex:"-1"},[e("a",{class:"header-anchor",href:"#勇者传说","aria-hidden":"true"},"#"),n(" 勇者传说")],-1),u={href:"/godot/zips/勇者传说.7z"};function p(m,y){const r=l("el-button");return o(),s("div",null,[_,e("a",u,[i(r,{type:"primary",plain:""},{default:c(()=>[n("游戏素材下载")]),_:1})]),a(`
基础知识：

1. 如何制作滚动视差背景？
2. 如何构建游戏地图？
3. 如何设置角色相机？
4. 如何绘制 tilemap 地图图块的物理层？

 `),a(`

视频脚本：

1. 开始菜单
    - 在默认场景中，创建一个 \`Node2D\` 节点，作为根节点，并改名为“start_menu”;
    - 在创建一个 Button 子节点，改名为 start，将 text 属性设置为“开始游戏”，Theme Overrides > Font Size 设置 48，调整一下按钮位置。
    - 按住 Ctrl + D 键，复制一个按钮节点，并改名为 quit，将文字内容为“退出游戏”，调整一下按钮位置。
    - 如果你有强迫症，非要让按钮居中对齐，就找到 “Layout > Transform” 属性：
        - 将 Size.x 设置为 250，将 Size.y 设置为 100
        - Position.x 设置为 1152 / 2 - 250 / 2，水平方向就居中了
        - 垂直方向: Position.y 设置为 648 / 2 - 150 / 2 && 648 / 2
    - 按住 Ctrl + S 键，保存一下场景（新建一个 scene 文件夹）
    - 运行一下游戏，看看效果。
    - 选中根节点 start_menu，新建一个脚本 scripts/start_menu.gd，删除无用代码。
        1. 选中 start 按钮，添加一个 pressed 信号，
        2. 然后，创建一个新场景\`scenes/level_1\`，并添加一个 label 节点（内容设置为“关卡 1”）
        3. 回到 start_menu 脚本中，编写 start 按钮的代码逻辑，也就是，当 start 按钮被按下时，就调用 change_scene_to_file() 函数，把 start_menu 场景切换成 level1 场景。测试一下！
        4. 接下来，选中 quit 按钮，同样，添加一个 pressed 信号。编写 quit 按钮的代码逻辑，也就是，当 quit 按钮被按下时，就调用 quit() 函数，退出游戏！测试一下！

2. 滚动视差背景
    - 新增一个场景，然后，添加一个 ParallaxBackground 节点，作为场景的根节点，并改名为“background”。
    - 接着，新增一个 ParallaxLayer 子节点，然后，为其添加一个 Sprite2D 子节点，再将资源目录下的背景图 background_layer_1.png，拖拽到 Sprite2D 子节点的 texture 纹理属性上。设置 Transform > Scale 属性设置为 3.6，不启用 Offset > Centered。
    - 由于游戏中一共有远、中、近三层背景。接下来，先选中 ParallaxLayer 节点，连按两次 Ctrl + D 键，复制两个 ParallaxLayer 节点，分别是 ParallaxLayer2、ParallaxLayer3。
    - 然后，依次将资源目录下的背景图 background_layer_2.png、background_layer_3.png，拖拽到对应 Sprite2D 节点的 texture 纹理属性上。
    - 这样，就完成了背景图的设置。按住 Ctrl + S 键，保存一下场景。再我们在把 background 场景，拖拽到开始菜单场景下，看看效果。
    - 接下来，我们要让背景图动起来。先回到 background 场景，选中根节点，添加一个脚本，删除无用代码。再定义一个变量 speed，表示背景图的移动速度，默认值为100。
    - 然后，在游戏画面每一帧更新的时候，通过设置 ParallaxBackground 对象上的 scroll_offset 属性，也就是滚动背景的滚动值，从而，实现背景图的移动。
    - 测试一下，你会发现背景图滚着滚着就没了，这是因为，我们还没有给设置无限背景，所以，接下来，我们来设置无限背景。选中 ParallaxLayer 节点，将 Motion > Mirroring 设置为背景图的宽度，即可！至于 ParallaxLayer2、ParallaxLayer3 同样如此。测试一下。
    - 现在还有一个问题，就是远景、中景、近景的移动速度是一样的，这就不正常了，初中物理常识就告诉我们了，距离越远的地方，移动速度就越慢，距离越近的地方，物体移动速度就越快。所以，接下来，我们来调整一下三层背景图的移动速度。先选中 ParallaxLayer 节点，将 Motion > Scale 属性设置为了 0.2。同理，将 ParallaxLayer2 节点、ParallaxLayer3 节点的 Motion > Scale 属性设置为了 0.5、0.8，分别对应着中景和近景的移动速度，这里的 Scale 值越大，背景移动速度越快。

3. 创建角色：
    - 新增一个场景，然后，添加 CharacterBody2D 节点，作为场景的根节点，并改名为“player”。
    - 然后，添加一个子节点 AnimatedSprite2D，用于显示角色长什么样子。再添加一个子节点 CollisionShape2D，用于检测角色的碰撞。
    - 按住 Ctrl + S 键，保存一下场景。
    - 接下来，我们要给角色添加动画。先选中 AnimatedSprite2D 节点，然后，在属性面板上，找到 Animation > Sprite Frames 属性，点击“新建 SpriteFrames”。
    - 再点一下“新建 SpriteFrames”，会弹出一个动画设置面板，然后，我们就可以创建角色动画了。
    - 先把默认动画 default 改名为 idle，表示角色静止时的动画。接着，点击“从精灵表中添加帧”，选中资源目录下，名为 char_blue_1.png 的图片，在选择帧的时候，先按照横排 8 个，竖排 11 个来分割动画帧。然后，按住鼠标左键，搁那一顿划拉，把第一排的动画帧都选中，再点一下“添加 6 帧”按钮。
    - 再点击播放动画按钮，然后，你就能够在 2D 可视区域，看到一个不断甩着自己刘海的主角阿强了。（小技巧：滚动鼠标滚轮可以缩放 2D 可视区域 && 按住鼠标滚轮可以拖拽 2D 可视区域），动画播放太慢了，我们把动画速度调快一点。
    - 接下来，为阿强添加一个胶囊碰撞形状，用于以后检测阿强与物体之间的碰撞。
    - 然后，给 player 节点，添加一个移动脚本。
    - 好了，按住 Ctrl + S 键，保存一下场景。在把 player 场景，拖拽到 level1 场景下，看看效果。

4. 创建地图
    - 新增 tilemap 节点，并绘制测试地图
5. 角色动画:
    - 新增动画: 静止idle、奔跑 run 、跳跃 jump 、下落 fall
    - 用脚本控制角色的行为动画
6. 创建敌人：
    - 新建场景 enemy[CharacterBody2D]
    - 添加敌人动画 AnimatedSprite2D：静止 idle，死亡 death、奔跑 run
    - 自动地追击玩家
7. 新增收藏品金币
    - 新建场景 gold[Area2D]
    - 金币计数
    - 金币消失动画
    - 自动生成金币
 `)])}const S=t(d,[["render",p],["__file","brave.html.vue"]]);export{S as default};
