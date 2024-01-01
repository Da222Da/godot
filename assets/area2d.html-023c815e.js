import{_ as n,o as s,c as a,f as e}from"./app-19f36e20.js";const t={},p=e(`<h1 id="如何检测-2d-物体之间的碰撞" tabindex="-1"><a class="header-anchor" href="#如何检测-2d-物体之间的碰撞" aria-hidden="true">#</a> 如何检测 2D 物体之间的碰撞？</h1><p>在 Godot 中，如果你想检测 2D 物体之间碰撞的话！可以使用 Area2D 区域节点，来定义碰撞对象检测区域。示例如下：</p><ul><li>单一节点示例：</li></ul><div class="language-gdscript line-numbers-mode" data-ext="gdscript"><pre class="language-gdscript"><code><span class="token keyword">extends</span> <span class="token class-name">Area2D</span>

<span class="token comment"># 进入碰撞区域时调用</span>
<span class="token keyword">func</span> <span class="token function">_on_Area2D_body_entered</span><span class="token punctuation">(</span>body<span class="token punctuation">)</span><span class="token punctuation">:</span>
    <span class="token comment"># body是进入碰撞区域的对象</span>
    <span class="token function">print</span><span class="token punctuation">(</span><span class="token string">&quot;进入碰撞区域：&quot;</span><span class="token punctuation">,</span> body<span class="token punctuation">.</span>name<span class="token punctuation">)</span>
</code></pre><div class="line-numbers" aria-hidden="true"><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div></div></div><ul><li>分组节点示例：</li></ul><div class="language-gdscript line-numbers-mode" data-ext="gdscript"><pre class="language-gdscript"><code><span class="token keyword">extends</span> <span class="token class-name">Area2D</span>

<span class="token comment"># 进入碰撞区域时调用</span>
<span class="token keyword">func</span> <span class="token function">_on_Area2D_body_entered</span><span class="token punctuation">(</span>body<span class="token punctuation">)</span><span class="token punctuation">:</span>
    <span class="token comment"># 这里的 enemy，是对 n 个敌人节点进行分组，因为敌人可能是很多只史莱姆</span>
    <span class="token keyword">if</span> body<span class="token punctuation">.</span><span class="token function">is_in_group</span><span class="token punctuation">(</span><span class="token string">&quot;enemy&quot;</span><span class="token punctuation">)</span><span class="token punctuation">:</span>
        <span class="token function">print</span><span class="token punctuation">(</span><span class="token string">&quot;敌人进入碰撞区域&quot;</span><span class="token punctuation">)</span>

<span class="token comment"># 离开碰撞区域时调用</span>
<span class="token keyword">func</span> <span class="token function">_on_Area2D_body_exited</span><span class="token punctuation">(</span>body<span class="token punctuation">)</span><span class="token punctuation">:</span>
    <span class="token keyword">if</span> body<span class="token punctuation">.</span><span class="token function">is_in_group</span><span class="token punctuation">(</span><span class="token string">&quot;enemy&quot;</span><span class="token punctuation">)</span><span class="token punctuation">:</span>
        <span class="token function">print</span><span class="token punctuation">(</span><span class="token string">&quot;敌人离开碰撞区域&quot;</span><span class="token punctuation">)</span>
</code></pre><div class="line-numbers" aria-hidden="true"><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div></div></div>`,6),c=[p];function o(i,l){return s(),a("div",null,c)}const d=n(t,[["render",o],["__file","area2d.html.vue"]]);export{d as default};
