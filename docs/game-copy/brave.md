# 勇者传说

<a href="/godot/zips/勇者传说.7z">
    <el-button type="primary" plain>游戏素材下载</el-button>
</a>

<!--

视频脚本：

1. 开始菜单
    - 在默认场景中，创建一个 `Node2D` 节点，作为根节点，并改名为“start_menu”;
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
        2. 然后，创建一个新场景`scenes/level_1`，并添加一个 label 节点（内容设置为“关卡 1”）
        3. 回到 start_menu 脚本中，编写 start 按钮的代码逻辑，也就是，当 start 按钮被按下时，就调用 change_scene_to_file() 函数，把 start_menu 场景切换成 level1 场景。测试一下！
        4. 接下来，选中 quit 按钮，同样，添加一个 pressed 信号。编写 quit 按钮的代码逻辑，也就是，当 quit 按钮被按下时，就调用 quit() 函数，退出游戏！测试一下！

 -->
