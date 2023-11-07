# 如何安装 Godot？

<el-card class="box-card">
    <template #header>
        <div class="card-header" style="display: flex;justify-content: space-between;align-items: center;">
            <span>Godot 引擎的安装教程：</span>
            <el-button @click="next">下一步</el-button>
        </div>
    </template>
    <div style="height: 300px">
    <el-steps direction="vertical" :active="active" finish-status="success">
        <el-step title="Step 1" />
        <el-step title="Step 2" />
        <el-step title="Step 3" />
    </el-steps>
</div>
</el-card>

<script lang="ts" setup>
import { ref } from 'vue'

const active = ref(0)

const next = () => {
  if (active.value++ > 2) active.value = 0
}
</script>

::: danger BiliBili 喂饭区教程

<iframe id="myVideo" src="//player.bilibili.com/player.html?aid=952051050&amp;cid=&amp;page=&amp;high_quality=1&amp;danmaku=0&amp;as_wide=1" frameborder="0" scrolling="no" allow="autoplay" framespacing="0" allowfullscreen="" autoplay="autoplay" style="height: 300px; width: 100%; margin: 20px 0;"></iframe>

::: 
