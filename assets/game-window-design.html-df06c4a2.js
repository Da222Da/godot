import{_ as c,r as o,o as t,c as a,d as s,f as n}from"./app-ed0390b9.js";const i={},d=n('<div class="custom-container tip"><p class="custom-container-title">设计经验</p><p>一般来说，我们会将游戏窗口的宽高按照 16 ：9 的比例进行设置，从而，满足绝大多数的电脑显示器。常用的尺寸有<code>1920*1080，1280*720、1152*648</code>。</p><p>总之，只要能让我们的游戏画面更加清晰，怎么着都行。</p></div><div class="custom-container danger"><p class="custom-container-title">像素游戏 -- 窗口设计经验</p><p>在开发 2D 像素游戏时，我们通常会将拉伸模式设置为 <code>canvas_items</code>，以及将游戏窗口设置为视口大小的 3 倍：</p><ul><li>视口：宽度<code>默认 1152 -&gt; 1152 / 3</code> &amp;&amp; 高度<code>默认 648 -&gt; 648 / 3</code></li><li>游戏窗口：窗口宽度覆盖 <code>1152</code> &amp;&amp; 窗口宽度覆盖：<code>648</code></li></ul></div><div class="custom-container warning"><p class="custom-container-title">拉伸模式 canvas_items 与 keep 的区别：</p><ul><li><p><code>canvas_items</code>（表示对象将根据其父级的大小进行拉伸。这意味着对象将始终保持与其父级相同的比例，无论其父级的大小如何 ）。</p></li><li><p><code>keep</code>（画面会被拉伸以填满整个视口，但不会变形。如果视口的宽高比例和游戏画面不同，会出现黑边）。</p></li></ul></div>',3);function l(p,r){const e=o("PageHeader");return t(),a("div",null,[s(e,{content:"如何设计游戏窗口的大小？"}),d])}const _=c(i,[["render",l],["__file","game-window-design.html.vue"]]);export{_ as default};