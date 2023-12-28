<template>
  <canvas id="mapCanvas" width="800" height="600">map 地图</canvas>
</template>

<script setup>
import { onMounted } from "vue";
import rough from "roughjs";

// 绘制文本矩形
const drawTextRectangle = (ctx, roughCanvas, text, x, y, w = 140, h = 40) => {
  ctx.font = "bold 16px Arial";
  ctx.fillStyle = "#000";

  // 文字内容自适应矩形宽度
  const textWidth = ctx.measureText(text).width;
  const textPadding = 20;
  if (textWidth > w) {
    w = textWidth + textPadding; // 添加间距 padding
  }
  roughCanvas.rectangle(x, y, w, h, { fill: "rgba(255,0,200,0.2)", fillStyle: "solid" });

  ctx.fillText(text, x + textPadding / 2, y + h / 2 + 5);
};

// 绘制文本圆形
const drawTextCircle = (ctx, roughCanvas, text, x, y, r = 60, h = 40) => {
  ctx.font = "bold 14px Arial";
  ctx.fillStyle = "#000";

  // 文字内容自适应矩形宽度
  const textWidth = ctx.measureText(text).width;
  const textPadding = 20;
  const isOver = textWidth > r ? true : false;
  if (isOver) {
    r = textWidth + textPadding; // 添加间距 padding
  }
  roughCanvas.ellipse(x, y, r, h, { fill: "#ff9587", fillStyle: "solid" });

  if (isOver) {
    ctx.fillText(text, x - r / 2 + textPadding / 2, y + h / 8);
  } else {
    ctx.fillText(text, x - r / 2, y + h);
  }
};
/**
 * 1. 熟悉 roughjs:
 *
 *    - 画线 line
 *    - 矩形 rectangle
 *    - 圆形 circle
 *    - 曲线 curve
 *    - 路径 path
 *
 * 2. 如何绘制文本矩形 & 文本圆形
 *
 *    - 文字内容自适应矩形宽度 measureText
 */
onMounted(() => {
  const myCanvas = document.getElementById("mapCanvas");
  const ctx = myCanvas.getContext("2d");
  const roughCanvas = rough.canvas(myCanvas);

  // roughCanvas.line(10, 100, 300, 120);
  drawTextRectangle(ctx, roughCanvas, "1.如何安装 Godot 引擎？", 10, 100);
  drawTextCircle(ctx, roughCanvas, "复刻游戏《太空射手》", 300, 120);

  // roughCanvas.line(60, 60, 190, 60, { strokeWidth: 5 });
  // roughCanvas.rectangle(140, 10, 100, 100, { fill: "red" });
  // roughCanvas.circle(480, 50, 80);

  // ctx.font = "30px Arial";
  // ctx.fillStyle = "black";
  // ctx.fillText("Hello, Canvas!", 50, 50);
});
</script>
