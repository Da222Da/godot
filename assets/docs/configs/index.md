# 项目设置

<BasicConcept :data='[
  { title: "ProjectSettings 类", content: "存储全局变量。" },
  { title: "autoload 自动加载", content: "自动加载，就是在全局范围内设置可以共同访问的游戏场景或脚本。" },
  ]' 
/>

::: tip 项目设置 - 知识体系

- **ProjectSettings 类：**
  - `ProjectSettings.get_setting("physics/2d/default_gravity")` 获取默认重力值
- **Autoload 自动加载：**
  - [加载脚本文件？](./autoload/index.md)
  - [加载游戏场景？](./autoload/scene.md)

:::

::: danger 常见问题

- [如何设计游戏窗口的大小？](./game-window-design.md)
- [如何解决 2d 游戏中像素精灵模糊的问题？](./render-blur/index.md)

:::
