# GDScript 语法约定

::: danger 注意！

每一个 GDScript 文件都代表着一个“子类”。

这意味着你在文件范围内声明的所有内容(例如变量和函数)都是类定义的一部分，并且对其他文件不可全局使用。


:::

## #语法约定

- **变量**
    - `var 关键字` 申明一个变量 
    - `const 关键字` 申明一个常量
    - `enum 关键字` 声明一个枚举变量
- **数据**
    * 基本数据类型：包括整数、浮点数、布尔值、字符串和枚举。 
    * 复合数据类型：包括数组、字典、列表和集合。 
    * 对象数据类型：包括场景、节点、材质、纹理、音频和动画。
- **运算符**
    - `and(与) or(或) not(非)` 逻辑运算符   
- **条件语句**
    - `if …… elif …… else ……` 条件分支语句
    - `switch && case` 条件分支语句
- **循环执行**
    *  `for  循环`：用于在一个范围内执行代码块。 
    *  `while  循环`：用于在一个条件成立时执行代码块。 
    *  `do-while  循环`：用于在一个条件成立时执行代码块，然后再判断条件是否成立。
- **函数**
    - `func 关键字` 申明函数
    - `pass 关键字` 通常用作占位符，用于指示某个代码块暂时不需要执行任何操作。
- **面向对象**
    - `self 关键字` 表示获取当前节点。



## #语法特性 

::: danger 什么是虚拟方法？

虚拟方法（Virtual Methods），是指可以在子类中被重写的方法。例如 _ready()、_process(delta)等等

:::

#### 场景与节点

- 虚拟方法
    - `_ready()`: 当节点第一次进入场景树时调用，往往用来设置节点的默认状态。
    - `_process(delta: float)`: 每帧调用一次，delta 是自上一帧结束时到当前帧结束的时间间隔。
    - `_input(event: InputEvent)`: 当节点接收到输入事件时，该函数会被调用。
- 操作场景树
    - `Node.get_tree()`, 用于返回包含该节点的 **场景树(SceneTree)**。 
    - `SceneTree.quit()`, 用于退出 Godot 引擎。
    - `SceneTree.change_scene_to_file()` 用于加载并切换到另一个场景文件。 
- 操作节点
    - 获取节点对象
        - `$ 符号`，根据节点名称，快速地获取当前场景中的节点，例如`$Button、$ui/ui_end`。
        - `Node.get_parent()`: 返回当前节点的父节点，如果节点缺少父节点，则返回 null。
        - `Node.get_node(path: NodePath)` 根据节点路径来获取节点对象。
    - 显示（或隐藏）节点
        - `Node.visible = true`: 显示节点
        - `Node.visible = false`: 隐藏节点
    - 增加节点
        - `Node.add_child(node)` 添加子节点
    - 删除节点
        - `Node.queue_free()` 在当前帧结束的时候，删除该节点。
- 信号
    - `signal 关键字`，自定义信号，例如`signal destroyed`
    - `emit_signal() 函数`，发送信号，例如`emit_signal("destroyed")`
    - `Signal.connect() 函数`，监听信号，例如`$player.destroyed.connect(callback)`

#### 资源

- `@GDScript.preload(path)` 预加载，在脚本解析时，加载文件。例如`preload("res://diamond.tscn")`
- `PackedScene.instantiate()` 用于实例化场景资源。


#### 数学

- 随机数
    - `randf_range(from, to)` 返回 from 和 to（包含）之间的随机浮点值。
- 线性代数
    - 二维向量
        - 创建二维向量数值`例如，Vector2() => (0, 0) || Vector2(1, 2) => (1, 2)`

        
