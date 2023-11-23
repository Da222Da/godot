export default {
    "/": [
        {
            text: "简介",
            link: "/",
        },
        {
            text: "初识 Godot Engine",
            collapsible: true,
            children: [
                "/quickstart/",
                "/quickstart/install.md",
                // "/quickstart/project.md",
                // "/scene-system/create-scene.md",
            ],
        },
        {
            text: "场景系统",
            collapsible: true,
            children: [
                "/scene-system/",
                "/scene-system/create-scene.md",
                "/scene-system/node-class.md",
                // "scene/instantiate-scene.md",
            ],
        },
        {
            text: "GDScript 脚本",
            collapsible: true,
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
            collapsible: true,
            children: [
                "/2D-graphics/",
                "/2D-graphics/coordinate-system.md",
                {   
                    text: "二维向量",
                    children: ["/2D-graphics/vector.md",  "/2D-graphics/vector2.md"]
                },
                "/2D-graphics/tilemap.md",
                {
                    text: "视觉效果",
                    children: ["/2D-graphics/parallax-background.md", "/2D-graphics/camera2d.md",]
                },
               
            ],
        },
        {
            text: "输入处理",
            collapsible: true,
            children: [
                "/input-handling/input-singleton.md",
            ],
        },
        {
            text: "物理系统",
            collapsible: true,
            children: [
                '/physic-system/', 
                "/physic-system/physic-body.md",
                "/physic-system/collision-shapes.md",
                {
                    text: "如何监测物体的碰撞？",
                    children: ["/physic-system/area2d.md"]
                }
            ]
        },
        {
            text: "附录",
            children: ["/appendix/gdscript-grammar.md", "/appendix/build-in-module.md"]
        },
    ],
};
