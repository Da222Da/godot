export default [
    {
        text: "首页",
        link: "/",
    },
    // {
    //     text: "Godot 上手指南图",
    //     link: "/guide/",
    // },
    {
        text: "GitHub",
        link: "https://github.com/Da222Da/godot",
    },
    {
        text: "文档支持",
        children: [
            {
                text: "游戏资源",
                children: [
                    {
                        text: "godot 官网",
                        link: "https://docs.godotengine.org/en/4.1/about/introduction.html",
                    },
                    {
                        text: "itch",
                        link: "https://itch.io/",
                    },
                ],
            },
            {
                text: "文档构建",
                children: [
                    {
                        text: "VuePress",
                        link: "https://v2.vuepress.vuejs.org/zh/",
                    },
                    { text: "Vue", link: "https://cn.vuejs.org/" },
                    {
                        text: "Element-plus",
                        link: "https://element-plus.org/",
                    },
                ],
            },
        ],
    },
];
