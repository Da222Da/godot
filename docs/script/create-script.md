# 如何创建一个脚本？

<VideoCard title="Bilibili 视频教程" downloadLink="/godot/zips/parallax_background.7z">

<template #content>
<video-iframe :video-id="621037418"></video-iframe>
</template>

</VideoCard>

<!-- ```gdscript
extends Sprite2D

var speed = 500

func _process(delta):
	var direction = Vector2()
	if Input.is_action_pressed("ui_left"):
		direction.x = -1.0
	if Input.is_action_pressed("ui_right"):
		direction.x = 1.0
	if Input.is_action_pressed("ui_up"):
		direction.y = -1.0
	if Input.is_action_pressed("ui_down"):
		direction.y = 1.0

	var velocity = direction * speed * delta;
	position += velocity

``` -->