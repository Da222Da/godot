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
                "/quickstart/project.md",
                "/scene/create-scene.md",
            ],
        },
        {
            text: "场景系统",
            children: [
                "/scene/",
                "/scene/create-scene.md",
                // "scene/instantiate-scene.md",
            ],
        },
        {
            text: "GDScript 脚本",
            children: [
                "/script/",
                "/script/node-script-relationship.md",
                "/script/create-script.md",
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
