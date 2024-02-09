<PageHeader content="分组 Group" />

在 Godot 中，"分组"（Group）是一种用于对节点进行分类和组织的机制。通过将节点分配到不同的分组中，您可以更方便地对它们进行管理和操作。

分组允许您在场景中根据需要对节点进行逻辑分组。这对于**同时处理多个节点非常有用**，例如更新、启用/禁用、隐藏/显示等。

<!--
在 Godot 中，您可以使用以下方法来管理分组：

1. 将节点添加到分组中：使用 `add_to_group` 方法将节点添加到一个或多个分组中。例如：

```gdscript
   add_to_group("group_name")
```

这将将当前节点添加到名为 `"group_name"` 的分组中。

2. 从分组中移除节点：使用 `remove_from_group` 方法从一个或多个分组中移除节点。例如：

```gdscript
   remove_from_group("group_name")
```

这将从当前节点中移除名为 `"group_name"` 的分组。

3. 检查节点是否属于分组：使用 `is_in_group` 方法检查节点是否属于指定的分组。例如：

```gdscript
   if is_in_group("group_name"):
       # 节点属于指定的分组
   else:
       # 节点不属于指定的分组
```

这将根据节点是否属于名为 `"group_name"` 的分组执行相应的逻辑。

4. 对分组中的节点进行迭代：使用 `get_tree().call_group_flags` 方法对特定分组中的所有节点进行迭代。例如：

```gdscript
   get_tree().call_group_flags(GroupCallFlags.CALL_DEFAULT, "group_name", "method_name")
```

这将对名为 `"group_name"` 的分组中的所有节点调用名为 `"method_name"` 的方法。

通过使用分组，您可以更好地组织和管理节点，并根据需要对它们进行批量操作。 -->
