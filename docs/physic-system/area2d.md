# 如何检测物体之间的碰撞？

#### 2D 物体

在 Godot 中，如果你想检测 2D 物体之间碰撞的话！可以使用 Area2D 区域节点，来定义碰撞对象检测区域。示例如下：

- 单一节点示例：

```gdscript
extends Area2D

# 进入碰撞区域时调用
func _on_Area2D_body_entered(body):
    # body是进入碰撞区域的对象
    print("进入碰撞区域：", body.name)
```

- 分组节点示例：

```gdscript
extends Area2D

# 进入碰撞区域时调用
func _on_Area2D_body_entered(body):
    # 这里的 enemy，是对敌人节点进行分组，因为敌人可能是史莱姆、哥布林……
    if body.is_in_group("enemy"):
        print("敌人进入碰撞区域")

# 离开碰撞区域时调用
func _on_Area2D_body_exited(body):
    if body.is_in_group("enemy"):
        print("敌人离开碰撞区域")
```