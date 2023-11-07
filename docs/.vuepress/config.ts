import { defineUserConfig, defaultTheme } from "vuepress";

export default defineUserConfig({
    lang: "zh-CN",
    title: "基于 Godot Engine 游戏开发",
    head: [["link", { rel: "icon", href: "favicon.ico" }]],
    theme: defaultTheme({
        navbar: [
            {
                text: "GitHub",
                link: "https://github.com/Da222Da/godot",
            },
            {
                text: "文档支持",
                children: [
                    {
                        text: "VuePress",
                        link: "https://v2.vuepress.vuejs.org/zh/",
                    },
                    { text: "Vue", link: "https://cn.vuejs.org/" },
                    {
                        text: "Element-plus",
                        link: "https://element-plus.gitee.io/zh-CN/",
                    },
                    {
                        text: "图标字符库emoji",
                        link: "https://www.webfx.com/tools/emoji-cheat-sheet/",
                    },
                ],
            },
        ],
        sidebarDepth: 1,
        sidebar: {
            "/": [
                "/",
                {
                    text: "熟悉 Godot 引擎",
                    link: "/src/quick/",
                    children: ["/src/quick/install.md"],
                },
            ],
        },
    }),
});
