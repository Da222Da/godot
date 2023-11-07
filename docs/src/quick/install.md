# 如何安装 Godot？

<!-- ::: danger BiliBili 喂饭教程

<iframe id="myVideo" src="//player.bilibili.com/player.html?aid=952051050&amp;cid=&amp;page=&amp;high_quality=1&amp;danmaku=0&amp;as_wide=1" frameborder="0" scrolling="no" allow="autoplay" framespacing="0" allowfullscreen="" autoplay="autoplay" style="height: 300px; width: 100%; margin: 20px 0;"></iframe>

::: -->

<el-card class="box-card">
    <template #header>
        <div class="card-header" style="display: flex;justify-content: space-between;align-items: center;">
            <span>Godot 引擎的安装教程：</span>
            <el-button @click="next">下一步</el-button>
        </div>
    </template>
    <div style="height: 500px;overflow: auto;">
        <el-steps direction="vertical" :active="active" finish-status="success">
            <el-step>
                <template v-slot:title>
                    第 1 步：打开 Godot 官网 <a href="https://godotengine.org" target="_blank">(https://godotengine.org)</a>.
                </template>
                <template v-slot:description>
                    <img src="/images/website.png" width= "500" />
                </template>
            </el-step>
            <el-step>
                <template v-slot:title>
                    第 2 步：前往 Godot 下载页 <a href="https://godotengine.org/download/3.x/windows/" target="_blank">(https://godotengine.org/download/3.x/windows/)</a>，下载适合你电脑操作系统的 Godot 引擎安装包。
                </template>
                <template v-slot:description>
                    <div class="custom-container tip">
                        <p class="custom-container-title">提示: </p>
                        <div>
                            <p>当前的操作系统：Windows</p>
                            <p>下载的目标版本：Godot@3.x</p>
                        </div>
                    </div>
                    <img src="/images/download.png" width= "500" />
                </template>
            </el-step>
            <el-step>
                <template v-slot:title>
                    第 3 步：将下载得到的压缩文件进行解压。
                </template>
                <template v-slot:description>
                    <img src="/images/unzip.png" width= "500" />
                </template>
            </el-step>
            <el-step>
                <template v-slot:title>
                    第 4 步：双击运行。
                </template>
                <template v-slot:description>
                    <img src="/images/run.png" width= "500" />
                </template>
            </el-step>
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
