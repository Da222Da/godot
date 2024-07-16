<template>
  <canvas id="mapCanvas" :height="canvasHeight"></canvas>
</template>

<script setup>
import { useRouter } from "vue-router";
const router = useRouter();
/**
 * 1. 熟悉 roughjs:
 *
 *    - 画线 line
 *    - 矩形 rectangle
 *    - 椭圆形 ellipse
 *
 * 2. 如何绘制文本矩形 & 文本椭圆形
 *
 *    - 文字内容自适应矩形宽度 measureText
 *
 * 3. 如何绘制连线，来链接两个图形？
 *
 * 4. 如何处理 canvas 事件？
 */
import { onMounted } from "vue";
import rough from "roughjs";

const props = defineProps({
  mapdata: {
    default: [],
  },
  canvasHeight: {
    default: 500,
  },
});
const canvasWidth = 960;

class GeneratorGraph {
  constructor(canvas, opts = {}) {
    this.canvas = canvas;
    this.ctx = canvas.getContext("2d");
    this.roughCanvas = rough.canvas(canvas);
    this.w = 140;
    this.h = 40;
    this.textPadding = 20;
  }
  adaptiveWidth(text) {
    let { ctx, w, textPadding } = this;
    const textWidth = ctx.measureText(text).width;
    if (textWidth > w) {
      w = textWidth + textPadding;
    }
    return w;
  }
  rectangle(text, x, y) {
    let { ctx, roughCanvas, w, h, textPadding } = this;
    ctx.font = "bold 16px Arial";
    ctx.fillStyle = "#000";

    w = this.adaptiveWidth(text);
    roughCanvas.rectangle(x, y, w, h, {
      fill: "#fff",
      fillStyle: "solid",
      roughness: 5,
    });
    ctx.fillText(text, x + textPadding / 2, y + h / 2 + 5);

    return {
      centerX: x + w / 2,
      centerY: y + h / 2,
      x,
      y,
      width: w,
      height: h,
    };
  }
  ellipse(text, x, y) {
    let { ctx, roughCanvas, w, h, textPadding } = this;

    ctx.font = "bold 14px Arial";
    ctx.fillStyle = "#000";

    // 文字内容自适应矩形宽度
    w = this.adaptiveWidth(text);
    x = x + w / 2;
    y = y + h / 2;
    roughCanvas.ellipse(x, y, w, h, {
      fill: "#ff9587",
      fillStyle: "solid",
      roughness: 2,
    });
    ctx.fillText(text, x - w / 2 + textPadding / 2, y + h / 8);

    return {
      centerX: x, // 返回矩形中心点
      centerY: y,
      x,
      y,
      width: w,
      height: h,
    };
  }
  line(x1, y1, x2, y2) {
    this.ctx.globalCompositeOperation = "destination-over";
    this.roughCanvas.line(x1, y1, x2, y2, { strokeWidth: 3 });
    this.ctx.globalCompositeOperation = "source-over";
  }
}

const drawMap = (canvas, datas = []) => {
  const graph = new GeneratorGraph(canvas);
  let lastN, currentN;
  const nodeOffset = 50;
  let direction = 1;
  datas.forEach((item, index, array) => {
    item.type = item.type || "rectangle";
    item.link = item.link || "";
    if (item.type === "rectangle") {
      const num = index + 1;
      item.text = num + "." + item.text;
    }
    if (index > 0) {
      // 绘制上一个节点
      let lastItem = array[index - 1];
      lastN = graph[lastItem.type](lastItem.text, lastItem.x, lastItem.y);
      lastItem.width = lastN.width;
      lastItem.height = lastN.height;

      // 获取当前节点信息
      item.x = lastN.x + (lastN.width + nodeOffset) * direction;
      item.y = lastN.y;
      item.height = lastN.height;

      let itemW = graph.adaptiveWidth(item.text);
      if (direction === 1) {
        if (itemW + item.x > canvasWidth) {
          direction = -1;
          item.x = canvasWidth - itemW - 10;
          item.y = item.y + item.height + nodeOffset;
        }
      } else {
        if (lastItem.x - itemW - nodeOffset < 0) {
          direction = 1;
          item.x = 10;
          item.y = item.y + item.height + nodeOffset;
        }
      }

      // 绘制当前节点
      currentN = graph[item.type](item.text, item.x, item.y);
      item.width = currentN.width;
      item.height = currentN.height;

      // 绘制连线
      graph.line(lastN.centerX, lastN.centerY, currentN.centerX, currentN.centerY);
    } else {
      item.x = 10;
      item.y = 60;
    }
  });

  return datas;
};

// 监听 resize,动态设置 canvas 比例
const resizeCanvas = (canvas) => {
  const { offsetWidth } = canvas.parentElement;
  // 如何实现响应式 canvas? —— 借助 transform.scale & transform origin
  canvas.style.transformOrigin = "top left";
  canvas.style.transform = `scale(${offsetWidth / canvasWidth})`;
};

onMounted(() => {
  const canvas = document.getElementById("mapCanvas");

  // 设置画布尺寸
  canvas.width = canvasWidth;
  resizeCanvas(canvas);
  window.addEventListener("resize", () => resizeCanvas(canvas));

  // 绘制图形
  const datas = drawMap(canvas, props.mapdata);

  // 事件监听
  canvas.addEventListener(
    "click",
    (event) => {
      const { clientX, clientY } = event;
      const { offsetWidth } = canvas.parentElement;
      const { left, top } = canvas.getBoundingClientRect();
      const clickX = (clientX - left) / (offsetWidth / canvasWidth);
      const clickY = (clientY - top) / (offsetWidth / canvasWidth);
      datas.forEach((item) => {
        const { x, y, width, height, link } = item;
        if (clickX >= x && clickX <= x + width && clickY >= y && clickY <= y + height) {
          if (link) router.push(link);
        }
      });
    },
    false
  );
});
</script>
