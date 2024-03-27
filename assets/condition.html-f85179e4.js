import{_ as s,r as a,o as t,c as e,d as o,f as p}from"./app-546c4c18.js";const c={},i=p(`<p>在 Godot 中，条件语句主要包括 <code>if</code> 语句、 <code>elif</code> 语句、 <code>else</code> 语句以及 <code>match</code> 语句。这些条件语句用于根据不同条件执行相应的代码块。</p><p>示例代码如下：</p><div class="language-gdscript line-numbers-mode" data-ext="gdscript"><pre class="language-gdscript"><code><span class="token keyword">var</span> number <span class="token operator">=</span> <span class="token number">10</span>

<span class="token keyword">if</span> number <span class="token operator">&lt;</span> <span class="token number">10</span><span class="token punctuation">:</span>
    <span class="token function">print</span><span class="token punctuation">(</span><span class="token string">&quot;小于 10&quot;</span><span class="token punctuation">)</span>
<span class="token keyword">elif</span> number <span class="token operator">==</span> <span class="token number">10</span><span class="token punctuation">:</span>
    <span class="token function">print</span><span class="token punctuation">(</span><span class="token string">&quot;等于 10&quot;</span><span class="token punctuation">)</span>
<span class="token keyword">else</span><span class="token punctuation">:</span>
    <span class="token function">print</span><span class="token punctuation">(</span><span class="token string">&quot;大于 10&quot;</span><span class="token punctuation">)</span>

</code></pre><div class="line-numbers" aria-hidden="true"><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div></div></div><div class="language-gdscript line-numbers-mode" data-ext="gdscript"><pre class="language-gdscript"><code><span class="token keyword">var</span> state <span class="token operator">=</span> <span class="token string">&quot;running&quot;</span>

<span class="token keyword">match</span> state<span class="token punctuation">:</span>
    <span class="token string">&quot;idle&quot;</span><span class="token punctuation">:</span>
        <span class="token function">print</span><span class="token punctuation">(</span><span class="token string">&quot;角色静止&quot;</span><span class="token punctuation">)</span>
    <span class="token string">&quot;running&quot;</span><span class="token punctuation">:</span>
        <span class="token function">print</span><span class="token punctuation">(</span><span class="token string">&quot;角色奔跑&quot;</span><span class="token punctuation">)</span>
    <span class="token string">&quot;jumping&quot;</span><span class="token punctuation">:</span>
        <span class="token function">print</span><span class="token punctuation">(</span><span class="token string">&quot;角色跳跃&quot;</span><span class="token punctuation">)</span>
    _<span class="token punctuation">:</span>
        <span class="token comment"># _用作默认或“其他”情况，当没有其他分支匹配时执行。</span>
        <span class="token function">print</span><span class="token punctuation">(</span><span class="token string">&quot;未知状态&quot;</span><span class="token punctuation">)</span>

</code></pre><div class="line-numbers" aria-hidden="true"><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div></div></div>`,4);function l(u,r){const n=a("PageHeader");return t(),e("div",null,[o(n,{content:"条件语句："}),i])}const k=s(c,[["render",l],["__file","condition.html.vue"]]);export{k as default};
