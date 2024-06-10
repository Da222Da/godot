import{_ as a,r,o as s,c as i,a as e,d as l,w as d,b as t,e as n}from"./app-ed0390b9.js";const _="/godot/images/space-shooter.png",c={},p=e("h1",{id:"太空射手",tabindex:"-1"},[e("a",{class:"header-anchor",href:"#太空射手","aria-hidden":"true"},"#"),t(" 太空射手")],-1),h={href:"/godot/zips/太空射手.zip"},m=e("p",null,"这是一个简单的 2D 射击类游戏（PC 端），玩家将控制一艘宇宙飞船并射击即将到来的小行星。游戏会记录你击落的小行星数量，并在小行星与你的飞船碰撞时结束。具体的游戏规则设计如下：",-1),u=e("ul",null,[e("li",null,"宇宙飞船由方向键控制，按空格键可以发射激光。"),e("li",null,"小行星在屏幕外的任意位置生成，并从右向左飞向宇宙飞船。"),e("li",null,"当宇宙飞船用激光击中小行星时，小行星爆炸，玩家得一分。"),e("li",null,"如果一颗小行星撞上了宇宙飞船，两颗小行星都会爆炸，游戏就结束了。"),e("li",null,"按回车键可以重新启动游戏，按 escape 键可以随时退出游戏。")],-1),f=e("p",null,[e("img",{src:_,alt:"space-shooter"})],-1);function g(x,S){const o=r("el-button");return s(),i("div",null,[p,e("a",h,[l(o,{type:"primary",plain:""},{default:d(()=>[t("游戏素材下载")]),_:1})]),m,u,f,n(`
课程目录
·让飞船动起来
·自动地生成小行星
·结束游戏
·让飞船发射激光
·游戏打包
 `),n(`

视频脚本：

0. 简介
1. 让飞船动起来（含项目设置）
   - 创建主场景 main[Node2D]
   - 创建星空场景 bg[ParallaxBackground > ParallaxLayer > Sprite2D]
     - 添加脚本 background.gd，让星空场景动起来、滚动速度 30
   - 创建飞船场景 player[Area2D > Sprite2D + CollisionShape2D-circleShape]
     - 添加脚本 player.gd：
       - 让飞船动起来、移动速度 150
       - 将飞船限制在屏幕中
2. 自动地生成小行星
   - 创建小行星场景 asteroid[Area2D > Sprite2D + CollisionShape2D-circleShape]
     - 添加脚本 asteroid.gd
       - 让小行星动起来、移动速度 100
     - 周期性地自动生成小行星
       - 在主场景下，添加脚本 main.gd
       - 在主场景下，添加定时器 asteroid_timer，并将其设置为 autostart，然后，监听定时器信号 timeout，当定时器超时时，自动生成小行星。
3. 结束游戏
   - 创建爆炸场景 explosion.tscn
     1. 创建一个 Sprite2D 节点作为根节点，将其命名为“explosion”，并为其指定“explosion.png”图像。
     2. 创建一个 Timer 子节点，并将其名为 explosion_timer，并勾选 one_shot 和 autostart，以及将计时器的 wait_time 设置为 0.1。
     3. 为根节点创建一个脚本，改名为 explosion.gd，将 explosion_timer 的 timeout 信号连接到 explosion 节点,然后，当 timeout 信号被触发时，释放整个爆炸场景，就会产生短暂爆炸的感觉。
   - 编写碰撞爆炸逻辑
     1. 给 asteroid 根节点，添加一个分组 asteroid（因为小行星会有很多个）,在小行星脚本 asteroid.gd 中，添加 area_entered 进入信号，小行星与飞船碰撞时，删除小行星，引用爆炸场景，制作效果。
     2. 在飞船脚本 player 中，添加 area_entered 进入信号，飞船与小行星碰撞时，删除飞船，引用爆炸场景，制作效果。
   - 显示游戏结束 UI
     1. 创建游戏结束 UI
        - 为主场景添加一个 CanvasLayer 子节点，命名为“ui”
        - 然后，添加一个 Label 子节点，命名为“end”，将 text 属性值更改为“游戏结束 \\n - 按 Enter 回车键，重新开始 - \\n - 按 Esc 键，退出游戏 -”,并将内容居中显示。
        - 导入字体资源文件，选中 end 节点，在“检视器”下拉，找到 Theme Overrides 分组下的 fonts，选择快速加载文件。
        - 找到 Colors 分组下的 font_color（字体颜色）和 font_color_shadow（字体阴影颜色）属性，请择你喜欢的颜色，或分别输入域十六进制代码 6fffbb（青色）和 2f1f47（深紫色）。
        - 最后，默认状态下隐藏。
     2. 在 player 脚本中，自定义飞船被摧毁的信号 destroyed，当飞船与小行星碰撞时，发送飞船被摧毁信号。
     3. 在主场景中，添加脚本 main.gd，监听飞船被摧毁信号，当飞船被摧毁时，显示游戏结束 UI。
   - 按住 Esc 键，手动退出游戏。
   - 在游戏结束状态下，按住 Enter 键，重新开始游戏。
4. 让飞船发射激光
   - 创建激光场景
     1. 创建一个 Area2D 节点作为根节点，将其改名为“shot”，并将其放入“shot”组中（由于激光有很多）。
     2. 为 shot 创建一个 AnimatedSprite 子节点。为其新建 SpriteFrames 资源,并添加“shot1.png”和“shot2.png”作为帧，并勾选 Playing。
     3. 为 shot 创建一个 CollisionShape2D 子节点。将其形状设为一个 RectangleShape2D，然后调节碰撞矩形，使其覆盖激光精灵图。
   - 创建激光脚本 shot.gd，实现子弹发射后不停向右移动。
   - 让飞船发射激光
     1. 在 player 脚本中，预加载激光场景 shot.tscn，再监听空格键是否被按下。从而主场景中实例化激光。
     2. 限制激光不能连续射击（即在发射激光后，需要等待一段时间才能再次射击）。
        - 在 player 场景中，创建一个 Timer 子节点，改名为 “shot_wait_timer"，并将 Wait Time 设置为 0.2 s && One Shot 设置为 true（表示定时器在指定时间过去后只会触发一次）。
        - 然后，在 player 脚本中，当发射子弹的空格键被按下时，将标记变量 is_shoot 设置为 false(表示不能在射击了),并启动 shot_wait_timer 定时器，再监听 shot_wait_timer 节点的 timeout 信号，当 timeout 信号被触发后，将 is_shoot 改为 true（表示可以射击了）。
     3. 同时发射两束激光。
   - 击碎陨石
     1. 将 shot 节点的 area_entered 信号连接到 shot.gd 脚本，用于检测激光是否击中陨石。如果激光区域与陨石区域发生了碰撞，就调用 queue_free() 函数，删除自己。
     2. 在 asteroid.gd 脚本中，修改 area_entered 信号的触发函数，新增激光与飞船碰撞情况。
   - 添加得分记录功能
     - 选中 main 主场景，添加一个 Label 节点，改名为“score”。并将其 text 属性设置为“分数:0”，并修改文字颜色【font_color （字体颜色）6fffbb（青色）和 font_color_shadow（字体阴影颜色）2f1f47（深紫色）】与字体。
     - 在 asteroid.gd 脚本中，定义 score 信号，并修改 area_entered 信号的触发函数，判断是否激光与行星碰撞，如果碰撞，就发送 score 信号。
     - 在 main.gd 脚本中，监听 asteroid 脚本的 score 信号，当 asteroid 发射 asteroid 信号，将分数节点的内容 +1。
     - 解决两束激光同时击中陨石时，加了两分的问题。
5. 游戏打包

`)])}const D=a(c,[["render",g],["__file","space-shooter.html.vue"]]);export{D as default};
