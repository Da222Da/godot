import{_ as s,r as a,o as e,c as t,d as p,f as c}from"./app-ed0390b9.js";const o={},l=c(`<p>我们可以直接借助 <code>SceneTree.change_scene_to_file()</code> 或 <code>SceneTree.change_scene_to_packed()</code>，在场景之间进行切换：</p><div class="language-gdscript line-numbers-mode" data-ext="gdscript"><pre class="language-gdscript"><code><span class="token keyword">func</span> <span class="token function">_on_house_body_entered</span><span class="token punctuation">(</span>body<span class="token punctuation">)</span><span class="token punctuation">:</span>
    <span class="token comment"># 过渡效果</span>
	<span class="token keyword">var</span> tween <span class="token operator">=</span> <span class="token function">create_tween</span><span class="token punctuation">(</span><span class="token punctuation">)</span>
	tween<span class="token punctuation">.</span><span class="token function">tween_property</span><span class="token punctuation">(</span><span class="token variable">$Player</span><span class="token punctuation">,</span> <span class="token string">&quot;move_speed&quot;</span><span class="token punctuation">,</span> <span class="token number">0</span><span class="token punctuation">,</span> <span class="token number">0.5</span><span class="token punctuation">)</span>

    <span class="token comment"># 切换场景</span>
	<span class="token function">get_tree</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">.</span><span class="token function">change_scene_to_file</span><span class="token punctuation">(</span><span class="token string">&quot;res://scenes/level_in.tscn&quot;</span><span class="token punctuation">)</span>
</code></pre><div class="line-numbers" aria-hidden="true"><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div></div></div><div class="language-gdscript line-numbers-mode" data-ext="gdscript"><pre class="language-gdscript"><code><span class="token keyword">var</span> scene <span class="token operator">=</span> <span class="token keyword">preload</span><span class="token punctuation">(</span><span class="token string">&quot;res://scenes/level_in.tscn&quot;</span><span class="token punctuation">)</span>
<span class="token keyword">func</span> <span class="token function">_on_house_body_entered</span><span class="token punctuation">(</span>body<span class="token punctuation">)</span><span class="token punctuation">:</span>
    <span class="token comment"># 过渡效果</span>
	<span class="token keyword">var</span> tween <span class="token operator">=</span> <span class="token function">create_tween</span><span class="token punctuation">(</span><span class="token punctuation">)</span>
	tween<span class="token punctuation">.</span><span class="token function">tween_property</span><span class="token punctuation">(</span><span class="token variable">$Player</span><span class="token punctuation">,</span> <span class="token string">&quot;move_speed&quot;</span><span class="token punctuation">,</span> <span class="token number">0</span><span class="token punctuation">,</span> <span class="token number">0.5</span><span class="token punctuation">)</span>

    <span class="token comment"># 切换场景</span>
	<span class="token function">get_tree</span><span class="token punctuation">(</span><span class="token punctuation">)</span><span class="token punctuation">.</span><span class="token function">change_scene_to_packed</span><span class="token punctuation">(</span>scene<span class="token punctuation">)</span>
</code></pre><div class="line-numbers" aria-hidden="true"><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div></div></div>`,3);function i(u,r){const n=a("PageHeader");return e(),t("div",null,[p(n,{content:"如何切换场景，并添加过渡效果？"}),l])}const k=s(o,[["render",i],["__file","change-scene.html.vue"]]);export{k as default};