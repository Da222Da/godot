export default {
    "/": [
        {
            text: "简介",
            link: "/",
        },
        {
            text: "初识 Godot Engine",
            collapsible: false,
            children: [
                "/quickstart/",
                "/quickstart/install.md",
                // "/quickstart/project.md",
                // "/scene-system/create-scene.md",
            ],
        },
        {
            text: "场景系统",
            children: [
                "/scene-system/",
                "/scene-system/create-scene.md",
                // "scene/instantiate-scene.md",
                "/scene-system/node-class.md",
            ],
        },
        {
            text: "GDScript 脚本",
            children: [
                "/script/",
                "/script/node-script-relationship.md",
                "/script/create-script.md",
               {
                text: "信号",
                children: ["/script/signal.md", "/script/connect-signal.md",  "/script/custom-signal.md"]
               },
               "/script/group.md",
            ],
        },
        {
            text: "2D 图形",
            children: [
                // "/2D-graphics/",
                "/2D-graphics/parallax-background.md",
            ],
        },
        {
            text: "输入处理",
            children: [
                "/input-handling/input-singleton.md",
            ],
        },
    ],
};
