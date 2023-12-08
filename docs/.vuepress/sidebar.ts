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
            ],
        },
        {
            text: "场景系统",
            collapsible: true,
            children: [
                "/scene-system/",
                "/scene-system/create-scene.md",
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
                // "/2D-graphics/parallax-background.md",
                // "/2D-graphics/tilemap.md",
                // "/2D-graphics/camera2d.md",
            ],
        },
        // {
        //     text: "处理用户输入",
        //     collapsible: true,
        //     children: [
        //     ],
        // },
        // {
        //     text: "构建用户界面",
        //     collapsible: true,
        //     children: [
        //     ],
        // },
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
            text: "附录: GDScript 脚本语法",
            collapsible: true,
            link:"/appendix/gdscript-grammar.md"
        },
        // {
        //     text: "附录B: Godot 配置说明",
        //     link:"/appendix/project-config.md"
        // },
    ],
    "/game-copy/": [
        {
            text: "简介",
            link:"/game-copy/"
        },
        "/game-copy/space-shooter.md",
    ]
};
