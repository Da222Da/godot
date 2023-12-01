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

0. 项目设置
1. 让飞船动起来
    - 创建主场景 main[Node2D]
    - 创建星空场景 bg[ParallaxBackground > ParallaxLayer > Sprite2D]
        - 添加脚本 background.gd，让星空场景动起来、滚动速度 30
    - 创建飞船场景 player[Area2D > Sprite2D + CollisionShape2D-circleShape]
        - 添加脚本 player.gd：
            - 让飞船动起来、移动速度 150
            - 将飞船限制在屏幕中
2. 添加小行星
    - 创建小行星场景 asteroid[Area2D > Sprite2D + CollisionShape2D-circleShape]
        - 添加脚本 player.gd
            - 让小行星动起来、移动速度 100
        - 周期性地自动生成小行星
            - 在主场景下，添加脚本 main.gd
            - 在主场景下，添加定时器 asteroid_timer，并将其设置为 autostart，然后，监听定时器信号 timeout，当定时器超时时，自动生成小行星。
            
5. 添加游戏结束 UI
6. 添加重新开始功能
3. 发射激光
4. 添加得分记录

 -->