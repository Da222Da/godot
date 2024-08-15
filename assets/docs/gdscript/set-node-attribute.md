<PageHeader content="GdScript 脚本如何修改节点属性？" />

假设你创建如下 2 个节点：

```md
|- Node [script.gd]
|---- Lable
```

你可以通过以下方式修改 `Lable 节点` 的`文本属性 text` 和`颜色属性 modulate`:

```gdscript
extends Node

func _ready():
	$Label.text = "Hello World"
	$Label.modulate = Color.AQUAMARINE
```
