export default {
  "/": [
    {
      text: "简介",
      link: "/",
    },
    {
      text: "Godot 知识体系",
      collapsible: false,
      children: [
        {
          text: "初识 Godot 引擎",
          children: ["/3x/quickstart/", "/3x/quickstart/install.md", "/3x/quickstart/project.md", "/3x/quickstart/editor.md"],
        },
        { text: "场景系统", children: ["/3x/scene/", "/3x/scene/create-scene.md", "/3x/scene/instantiate-scene.md"] },
      ],
    },
    // {
    //   text: "Godot 游戏复刻",
    //   collapsible: true,
    // },
  ],
};
