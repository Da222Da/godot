<PageHeader content="Group 分组：组织功能相似的节点" />

将具有功能相似的节点组织在一起，以便于运行时轻松地对它们进行管理和操作。

-   `Node.get_groups()`, 返回一个该节点所在分组的数组。

```gdscript
func _on_body_entered(body: Node) -> void:
	if 'Goal' in body.get_groups():
		complete_level()

```
