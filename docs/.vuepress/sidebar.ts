export default {
  "/": [
    {
      text: "简介",
      link: "/",
    },
    {
      text: "手把手教你做《太空射击》",
      collapsible: false,
      children: ["/3x/quickstart/", "/3x/quickstart/install.md", "/3x/quickstart/project.md", "/3x/quickstart/create-scene.md"],
    },
    {
      text: "Godot 知识体系",
      collapsible: true,
      children: [{ text: "场景系统", children: ["/3x/scene/", "/3x/scene/create-scene.md", "/3x/scene/instantiate-scene.md"] }],
    },
  ],
};
