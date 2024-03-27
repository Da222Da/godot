import{_ as n,r as a,o as e,c,d as t,f as i}from"./app-546c4c18.js";const o={},l=i(`<p>在 Godot 中，is 关键字用于检查一个对象是否是特定类的实例或者是否继承自特定类。</p><div class="language-gdscript line-numbers-mode" data-ext="gdscript"><pre class="language-gdscript"><code><span class="token keyword">class_name</span> <span class="token class-name">Player</span> <span class="token comment"># 这里的 Player ，我们自定义的一个类名</span>
</code></pre><div class="line-numbers" aria-hidden="true"><div class="line-number"></div></div></div><div class="language-gdscript line-numbers-mode" data-ext="gdscript"><pre class="language-gdscript"><code><span class="token keyword">extends</span> <span class="token class-name">Node2D</span>

<span class="token keyword">signal</span> score

<span class="token comment"># Player 对象实例是否离开了该区域</span>
<span class="token keyword">func</span> <span class="token function">_on_score_area_body_exited</span><span class="token punctuation">(</span>body<span class="token punctuation">)</span><span class="token punctuation">:</span>
	<span class="token keyword">if</span> body <span class="token keyword">is</span> Player<span class="token punctuation">:</span>
		<span class="token function">emit_signal</span><span class="token punctuation">(</span><span class="token string">&quot;score&quot;</span><span class="token punctuation">)</span>
</code></pre><div class="line-numbers" aria-hidden="true"><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div></div></div>`,3);function d(p,r){const s=a("PageHeader");return e(),c("div",null,[t(s,{content:"is 关键词"}),l])}const m=n(o,[["render",d],["__file","is.html.vue"]]);export{m as default};
