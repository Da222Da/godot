import{_ as e,r,o as l,c as o,d as c,e as n,f as t}from"./app-ed0390b9.js";const d={},i=t('<div class="custom-container tip"><p class="custom-container-title">背景知识</p><p>实现原理：<strong><code>ParallaxBackground</code> 使用一个或多个 <code>ParallaxLayer</code> 子节点来创建视差效果</strong>。具体做法就是让每个 <code>ParallaxLayer</code> 以不同的速度移动，这样就能在 2D 游戏中创造一种产生视差效果，在这种效果中，远处的物体似乎比近处的物体移动得慢。</p><ul><li><code>ParallaxBackground</code> 用于创建滚动视差的节点。其常用属性如下： <ol><li><code>scroll_offset [默认： Vector2(0, 0)]</code> 视差背景的滚动值。</li></ol></li><li><code>ParallaxLayer</code> ParallaxBackground 的子节点，用于创建视差滚动层。其常用属性如下： <ol><li><code>motion_mirroring</code> 用于创建无限滚动的背景(一般设置得跟视口宽高一样)。</li><li><code>motion_scale </code> 用于设置视差层滚动的运动速度。</li></ol></li></ul></div>',1);function s(x,_){const a=r("PageHeader");return l(),o("div",null,[c(a,{content:"如何创建滚动视差背景？"}),i,n(`
- 视频脚本：

    - 新增一个场景，然后，添加一个 ParallaxBackground 节点，作为场景的根节点，并改名为“background”。
    - 接着，新增一个 ParallaxLayer 子节点，然后，为其添加一个 Sprite2D 子节点，再将资源目录下的背景图 background_layer_1.png，拖拽到 Sprite2D 子节点的 texture 纹理属性上。设置 Transform > Scale 属性设置为 3.6，不启用 Offset > Centered。
    - 由于游戏中一共有远、中、近三层背景。接下来，先选中 ParallaxLayer 节点，连按两次 Ctrl + D 键，复制两个 ParallaxLayer 节点，分别是 ParallaxLayer2、ParallaxLayer3。
    - 然后，依次将资源目录下的背景图 background_layer_2.png、background_layer_3.png，拖拽到对应 Sprite2D 节点的 texture 纹理属性上。
    - 这样，就完成了背景图的设置。按住 Ctrl + S 键，保存一下场景。再我们在把 background 场景，拖拽到开始菜单场景下，看看效果。
    - 接下来，我们要让背景图动起来。先回到 background 场景，选中根节点，添加一个脚本，删除无用代码。再定义一个变量 speed，表示背景图的移动速度，默认值为100。
    - 然后，在游戏画面每一帧更新的时候，通过设置 ParallaxBackground 对象上的 scroll_offset 属性，也就是滚动背景的滚动值，从而，实现背景图的移动。
    - 测试一下，你会发现背景图滚着滚着就没了，这是因为，我们还没有给设置无限背景，所以，接下来，我们来设置无限背景。选中 ParallaxLayer 节点，将 Motion > Mirroring 设置为背景图的宽度，即可！至于 ParallaxLayer2、ParallaxLayer3 同样如此。测试一下。
    - 现在还有一个问题，就是远景、中景、近景的移动速度是一样的，这就不正常了，初中物理常识就告诉我们了，距离越远的地方，移动速度就越慢，距离越近的地方，物体移动速度就越快。所以，接下来，我们来调整一下三层背景图的移动速度。先选中 ParallaxLayer 节点，将 Motion > Scale 属性设置为了 0.2。同理，将 ParallaxLayer2 节点、ParallaxLayer3 节点的 Motion > Scale 属性设置为了 0.5、0.8，分别对应着中景和近景的移动速度，这里的 Scale 值越大，背景移动速度越快。

 `)])}const g=e(d,[["render",s],["__file","make-parallaxbackground.html.vue"]]);export{g as default};
