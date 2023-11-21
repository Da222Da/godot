import BilibiliTutorial from "./src/BilibiliTutorial.vue";
import ImageTextCard from "./src/ImageTextCard.vue";
import VideoIframe from "./src/VideoIframe.vue";
import VideoCard from "./src/VideoCard.vue";

export default {
  install: (app) => {
    // 注册全局组件
    // BilibiliTutorial - Bilibili视频教程组件
    app.component("BilibiliTutorial", BilibiliTutorial);
    app.component("ImageTextCard", ImageTextCard);
    app.component("VideoIframe", VideoIframe);
    app.component("VideoCard", VideoCard);
    
  },
};
