<PageHeader content="如何在游戏中播放一段音频？" />

播放音频文件的最简单方法是使用 `AudioStreamPlayer 节点`。具体操作如下：

1. 新建一个 `AudioStreamPlayer 节点`
2. 将音频文件拖拽到`Stream 属性`中，表示设置要播放的音频流。
3. 在游戏中播放音频：
    - 方式 1：设置自动播放属性`autoplay`
    - 方式 2：在脚本文件中调用 `play() 函数` 播放音乐
    ```gd
    $AudioStreamPlayer.play()
    ```
