# 声音

声音`音乐和音效`是营造游戏氛围的重要组成部分，可以让玩家更好地融入游戏世界中，增强游戏体验。

<BasicConcept :data='[
  { title: "音频总线 Bus", content: "在Godot中，音频总线用于控制游戏中音频源的音量、声像定位和应用的效果。通过将音频源路由到不同的总线，您可以为玩家创造更具动态性和分层的音频体验。" },
  ]' 
/>

::: tip 声音 - 知识体系

- `AudioStreamPlayer2D 节点` 在 2D 空间中播放声音`与位置有关`。
  - `Stream 属性` 加载音频文件。
  - `VolumeDb 属性` 设置音量。
  - `Playing` 是否在播放声音。
  - `Bus 属性` 设置声音播放的音频总线。
- `AudioStreamPlayer 节点`：用于播放音频文件`与位置无关`。

:::

::: danger 常见问题

- [如何循环播放一段音乐?](./loop-playback/index.md)
- [如何添加、设置音频总线?](./bus/index.md)

:::
