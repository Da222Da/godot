<PageHeader content="Vector2: 浮点数 2D 向量内置对象" />

::: warning Vector2 API

#### 属性

- x: X 轴分量`float [默认： 0.0]`
- y: Y 轴分量`float [默认： 0.0]`

#### 常量

- **ZERO=Vector2(0)** 零向量，所有分量都是 0 的向量
- **ONE=Vector2(1)** 单位向量，所有分量都是 1 的向量
- **UP=Vector2(0,1)** 正上方向量
- **DOWN=Vector2(0,-1)** 正下方向量
- **LEFT=Vector2(-1,0)** 正左方向量
- **RIGHT=Vector2(1,0)** 正右方向量

#### 方法

- **normalized()** 返回一个与原始向量方向相同但长度为 1 的新向量`归一化`。
- **angle()** 返回该向量与 X 轴正方向的夹角，单位是弧度。X 轴正方向为 `(1, 0)` 向量。

    <img src="/images/vector2-angle.png" width=200 alt="返回夹角示意图" />

:::
