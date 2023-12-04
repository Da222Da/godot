# 太空射手

这是一个简单的 2D 射击类游戏，玩家将控制一艘宇宙飞船并射击即将到来的小行星。游戏会记录你击落的小行星数量，并在小行星与你的飞船碰撞时结束。具体的游戏规则设计如下：

- 宇宙飞船由方向键控制，按空格键可以发射激光。
- 小行星在屏幕外的任意位置生成，并从右向左飞向宇宙飞船。
- 当宇宙飞船用激光击中小行星时，小行星爆炸，玩家得一分。
- 如果一颗小行星撞上了宇宙飞船，两颗小行星都会爆炸，游戏就结束了。
- 按回车键可以重新启动游戏，按escape键可以随时退出游戏。

![space-shooter](/images/space-shooter.png)

<!-- 

视频脚本：

0. 简介与项目设置
1. 让飞船动起来
    - 创建主场景 main[Node2D]
    - 创建星空场景 bg[ParallaxBackground > ParallaxLayer > Sprite2D]
        - 添加脚本 background.gd，让星空场景动起来、滚动速度 30
    - 创建飞船场景 player[Area2D > Sprite2D + CollisionShape2D-circleShape]
        - 添加脚本 player.gd：
            - 让飞船动起来、移动速度 150
            - 将飞船限制在屏幕中
2. 自动地生成小行星
    - 创建小行星场景 asteroid[Area2D > Sprite2D + CollisionShape2D-circleShape]
        - 添加脚本 player.gd
            - 让小行星动起来、移动速度 100
        - 周期性地自动生成小行星
            - 在主场景下，添加脚本 main.gd
            - 在主场景下，添加定时器 asteroid_timer，并将其设置为 autostart，然后，监听定时器信号 timeout，当定时器超时时，自动生成小行星。
3. 结束游戏
    - 创建爆炸场景 explosion.tscn
        1. 创建一个 Sprite2D 节点作为根节点，将其命名为“explosion”，并为其指定“explosion.png”图像。
        2. 创建一个 Timer 子节点，并将其名为 explosion_timer，并勾选 one_shot 和 autostart，以及将计时器的 wait_time 设置为0.1。        
        3. 为根节点创建一个脚本，改名为 explosion.gd，将 explosion_timer 的 timeout 信号连接到 explosion 节点,然后，当 timeout 信号被触发时，释放整个爆炸场景，就会产生短暂爆炸的感觉。
    - 编写碰撞爆炸逻辑
        1. 在小行星脚本 asteroid.gd 中，添加 area_entered 进入信号，小行星与飞船碰撞时，删除小行星，引用爆炸场景，制作效果。
        2. 在飞船脚本 player 中，添加 area_entered 进入信号，飞船与小行星碰撞时，删除飞船，引用爆炸场景，制作效果。
    - 显示游戏结束 UI
        1. 创建游戏结束 UI
            - 为主场景添加一个CanvasLayer子节点，命名为“ui”
            - 然后，添加一个 Label 子节点，命名为“end”，将text属性值更改为“游戏结束 \n - 按 Enter 回车键，重新开始 - \n - 按 Esc 键，退出游戏 -”,并将内容居中显示。
            - 导入字体资源文件，选中 end 节点，在“检视器”下拉，找到Theme Overrides分组下的fonts，选择快速加载文件。
            - 找到Colors分组下的font_color （字体颜色）和font_color_shadow（字体阴影颜色）属性，请择你喜欢的颜色，或分别输入域十六进制代码6fffbb（青色）和2f1f47（深紫色）。
            - 最后，默认状态下隐藏。
        2. 在 player 脚本中，自定义飞船被摧毁的信号 destroyed，当飞船与小行星碰撞时，发送飞船被摧毁信号。
        3. 在主场景中，添加脚本 main.gd，监听飞船被摧毁信号，当飞船被摧毁时，显示游戏结束 UI。
    - 添加手动结束游戏功能
    - 添加重新开始功能功能
4. 让飞船发射激光
    - 添加得分记录
5. 游戏打包
-->