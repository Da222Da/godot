<PageHeader content="DeltaTime 增量时间：让移动速度以时间为单位" />

<BilibiliTutorial :video-id="1250422552"></BilibiliTutorial>

::: tip 基础知识

-   **帧速率**，也称为 FPS（Frames Per Second），是指每秒钟显示的图像帧数。它是衡量视频或动画流畅度的重要指标。例如，早期电影的标准帧速率是 24 FPS，也就是每秒要播放 24 张图像。**不同图像显示设备的帧速率各不相同，帧速率也高，画面越清晰、动作越流畅**。

-   **DeltaTime 增量时间** 是指每帧之间的时间差。在视频游戏中，用于计算游戏角色在每帧之间的移动距离，从而保证游戏角色在屏幕上的移动速度不受帧速率或者网络延迟的影响。

```gdscript
extends Sprite2D

var speed = 10
@onready var sprite_2d = $"."

func _process(delta):
	# sprite_2d.position.x += speed
	sprite_2d.position.x += speed * delta

```

| 移动速度 Speed | 帧速率 | 增量时间 | 每帧移动距离 | 每秒移动距离              |
| -------------- | ------ | -------- | ------------ | ------------------------- |
| 10             | 30     | 1/30     | 10 \* 30     | 10 \* 30 \* (1/30) = 10   |
| 10             | 120    | 1/120    | 10 \* 120    | 10 \* 120 \* (1/120) = 10 |

:::
