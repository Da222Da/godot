import BilibiliTutorial from "./src/BilibiliTutorial.vue";
import ImageTextCard from "./src/ImageTextCard.vue";
import VideoIframe from "./src/VideoIframe.vue";
import VideoCard from "./src/VideoCard.vue";
import Map from "./src/Map.vue";
import PageHeader from "./src/PageHeader.vue";
import BasicConcept from "./src/BasicConcept.vue";

export default {
  install: (app) => {
    // 注册全局组件
    app.component("BilibiliTutorial", BilibiliTutorial);
    app.component("ImageTextCard", ImageTextCard);
    app.component("VideoIframe", VideoIframe);
    app.component("VideoCard", VideoCard);
    app.component("Map", Map);
    app.component("PageHeader", PageHeader);
    app.component("BasicConcept", BasicConcept);
  },
};
