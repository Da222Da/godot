import BilibiliTutorial from "./src/BilibiliTutorial.vue";

export default {
  install: (app) => {
    // 注册全局组件
    // BilibiliTutorial - Bilibili视频教程组件
    app.component("BilibiliTutorial", BilibiliTutorial);
  },
};
