import { defineClientConfig } from "@vuepress/client";
import ElementPlus from "element-plus";
import "element-plus/dist/index.css";

import Components from "./plugins/components/index.js";

export default defineClientConfig({
  enhance({ app }) {
    app.use(ElementPlus);
    app.use(Components);
  },
  setup() {},
  rootComponents: [],
});
