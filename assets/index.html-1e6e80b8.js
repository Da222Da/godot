import{_ as d,r as l,o as n,c as s,d as t,a as e,w as a,b as o,f as r}from"./app-ed0390b9.js";const u={},_=e("h1",{id:"声音",tabindex:"-1"},[e("a",{class:"header-anchor",href:"#声音","aria-hidden":"true"},"#"),o(" 声音")],-1),m=e("p",null,[o("声音"),e("code",null,"音乐和音效"),o("是营造游戏氛围的重要组成部分，可以让玩家更好地融入游戏世界中，增强游戏体验。")],-1),p=r('<div class="custom-container tip"><p class="custom-container-title">声音 - 知识体系</p><ul><li><code>AudioStreamPlayer2D 节点</code> 在 2D 空间中播放声音<code>与位置有关</code>。 <ul><li><code>Stream 属性</code> 加载音频文件。</li><li><code>VolumeDb 属性</code> 设置音量。</li><li><code>Playing</code> 是否在播放声音。</li><li><code>Bus 属性</code> 设置声音播放的音频总线。</li></ul></li><li><code>AudioStreamPlayer 节点</code>：用于播放音频文件<code>与位置无关</code>。</li></ul></div>',1),h={class:"custom-container danger"},f=e("p",{class:"custom-container-title"},"常见问题",-1);function x(B,v){const i=l("BasicConcept"),c=l("RouterLink");return n(),s("div",null,[_,m,t(i,{data:[{title:"音频总线 Bus",content:"在Godot中，音频总线用于控制游戏中音频源的音量、声像定位和应用的效果。通过将音频源路由到不同的总线，您可以为玩家创造更具动态性和分层的音频体验。"}]}),p,e("div",h,[f,e("ul",null,[e("li",null,[t(c,{to:"/audio/loop-playback/"},{default:a(()=>[o("如何循环播放一段音乐?")]),_:1})]),e("li",null,[t(c,{to:"/audio/bus/"},{default:a(()=>[o("如何添加、设置音频总线?")]),_:1})])])])])}const k=d(u,[["render",x],["__file","index.html.vue"]]);export{k as default};