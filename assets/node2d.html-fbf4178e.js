import{_ as s,r as a,o as e,c as t,d as o,f as c}from"./app-ed0390b9.js";const i={},d=c(`<div class="custom-container tip"><p class="custom-container-title">Node2D 是什么？</p><p>所有的 2D 节点都继承自 <code>Node2D</code>。而 Node2D 本身封装了变换属性<code>位置、旋转、缩放和Z索引</code>。</p></div><div class="custom-container warning"><p class="custom-container-title">CanvasItem API</p><h4 id="方法" tabindex="-1"><a class="header-anchor" href="#方法" aria-hidden="true">#</a> 方法</h4><ul><li><code>look_at(point: Vector2)</code> 旋转该节点，使其指向 point</li></ul><div class="language-gdscript line-numbers-mode" data-ext="gdscript"><pre class="language-gdscript"><code><span class="token keyword">extends</span> <span class="token class-name">CharacterBody2D</span>
<span class="token keyword">func</span> <span class="token function">_process</span><span class="token punctuation">(</span>delta<span class="token punctuation">)</span><span class="token punctuation">:</span>
	<span class="token comment"># 让玩家始终看向鼠标</span>
	<span class="token function">look_at</span><span class="token punctuation">(</span><span class="token function">get_global_mouse_position</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">)</span>
</code></pre><div class="line-numbers" aria-hidden="true"><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div></div></div></div>`,2);function p(l,r){const n=a("PageHeader");return e(),t("div",null,[o(n,{content:"Node2D: 2D 节点的基类"}),d])}const m=s(i,[["render",p],["__file","node2d.html.vue"]]);export{m as default};