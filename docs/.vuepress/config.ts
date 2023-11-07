import { defineUserConfig, defaultTheme } from "vuepress";
import sidebar from "./sidebar.ts";
import navbar from "./navbar.ts";

export default defineUserConfig({
  lang: "zh-CN",
  title: "基于 Godot Engine 游戏开发",
  head: [["link", { rel: "icon", href: "favicon.ico" }]],
  theme: defaultTheme({
    navbar,
    sidebar,
    sidebarDepth: 1,
  }),
});
