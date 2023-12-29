<template>
  <div style="display: flex">
    <canvas id="mapCanvas" :height="canvasHeight"></canvas>
  </div>
</template>

<script setup>
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
 *
 * 5. 如何实现响应式 canvas? —— 借助 transform.scale & transform origin
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
    roughCanvas.rectangle(x, y, w, h, { fill: "#fff", fillStyle: "solid", roughness: 5 });
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
    roughCanvas.ellipse(x, y, w, h, { fill: "#ff9587", fillStyle: "solid", roughness: 2 });
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

const drawMap = (canvas, datas = [], isAuto = true) => {
  const graph = new GeneratorGraph(canvas);
  let lastN, currentN;
  if (!isAuto) {
    datas.forEach((item, index, array) => {
      item.type = item.type || "rectangle";

      if (item.type === "rectangle") {
        const num = index + 1;
        item.text = num + "." + item.text;
      }
      if (index > 0) {
        // 绘制上一个节点
        let lastItem = array[index - 1];
        lastN = graph[lastItem.type](lastItem.text, lastItem.x, lastItem.y);

        // 绘制当前节点
        currentN = graph[item.type](item.text, item.x, item.y);

        // 绘制连线
        graph.line(lastN.centerX, lastN.centerY, currentN.centerX, currentN.centerY);
      }
    });
  } else {
    const nodeOffset = 50;
    let direction = 1;
    datas.forEach((item, index, array) => {
      item.type = item.type || "rectangle";

      if (item.type === "rectangle") {
        const num = index + 1;
        item.text = num + "." + item.text;
      }
      if (index > 0) {
        if (direction === 1) {
          // 绘制上一个节点
          let lastItem = array[index - 1];
          lastN = graph[lastItem.type](lastItem.text, lastItem.x, lastItem.y);
          item.x = lastN.x + lastN.width + nodeOffset;
          item.y = lastN.y;
          item.height = lastN.height;
          console.log(index);
          // 绘制当前节点
          let itemW = graph.adaptiveWidth(item.text);
          if (itemW + item.x > canvasWidth) {
            direction = -1;
            item.x = canvasWidth - itemW - 10;
            item.y = item.y + item.height + nodeOffset;
          }
          currentN = graph[item.type](item.text, item.x, item.y);

          // 绘制连线
          graph.line(lastN.centerX, lastN.centerY, currentN.centerX, currentN.centerY);
        } else {
          // 绘制上一个节点
          let lastItem = array[index - 1];
          lastN = graph[lastItem.type](lastItem.text, lastItem.x, lastItem.y);
          item.x = lastN.x - (lastN.width + nodeOffset);
          item.y = lastN.y;
          item.height = lastN.height;

          // 绘制当前节点
          let itemW = graph.adaptiveWidth(item.text);
          if (lastItem.x - itemW - nodeOffset < 0) {
            direction = 1;
            item.x = 10;
            item.y = item.y + item.height + nodeOffset;
          }
          currentN = graph[item.type](item.text, item.x, item.y);

          // 绘制连线
          graph.line(lastN.centerX, lastN.centerY, currentN.centerX, currentN.centerY);
        }
      } else {
        item.x = 10;
        item.y = 100;
      }
    });
  }

  return datas;
};

// 监听 resize,动态设置 canvas 比例
const resizeCanvas = (canvas) => {
  const { offsetWidth } = canvas.parentElement;
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
      const { left, top } = canvas.getBoundingClientRect();
      const clickX = clientX - left;
      const clickY = clientY - top;

      // 检查单击位置是否在元素的边界内
      // this.data.forEach((item) => {
      //   const x = item.x,
      //     y = item.y;
      //   if (clickX >= x && clickX <= x + NODE_CONFIG.width && clickY >= y && clickY <= y + NODE_CONFIG.height) {
      //     _this.emitter.emit("event:click", item);
      //   }
      // });
    },
    false
  );
});
</script>
