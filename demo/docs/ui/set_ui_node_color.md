<PageHeader content="如何给 UI 节点设置颜色？" />

如果想给 UI 节点设置颜色的话，把握以下两个重点即可：

1. 使用 `Color` 类，来声明一个颜色变量
2. 将颜色变量赋值给节点属性`modulate`

```gdscript
var green_color = Color("09f302")

func _ready() {
    $Label.modulate(green_color)
}
```
