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
                "/script/signal.md",
                "/script/group.md",
            ],
        },
        {
            text: "2D 图形",
            collapsible: true,
            children: [
                "/2D-graphics/",
                "/2D-graphics/coordinate-system.md",
                "/2D-graphics/vector.md", 
                "/2D-graphics/vector2-operation.md",
                "/2D-graphics/parallax-background.md",
                "/2D-graphics/camera2d.md",
                "/2D-graphics/tilemap.md",
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
                "/physic-system/area2d.md"
               
            ]
        },
        {
            text: "附录",
            collapsible: true,
            children: [
                "/appendix/gdscript-grammar.md", 
                {
                    text: "内置模块",
                    link: "/appendix/build-in-module.md",
                    children: [
                        "/appendix/modules/node.md",
                    ]
                },
                "/appendix/project-config.md", 
            ]
        },
    ],
};
