<PageHeader content="in 关键词" />

在 Godot 的 GDScript 中，in 关键词，用于检查一个值是否存在于一个集合（如数组、字典的键）中。如果指定的值是集合的成员，则表达式的结果为 true。

```gdscript
var scores = {"Alice": 90, "Bob": 85}
if "Alice" in scores:
    print("Alice's score is in the dictionary")
```

```gdscript
var fruits = ["apple", "banana", "cherry"]
if "banana" in fruits:
    print("Banana is in the list")
```
