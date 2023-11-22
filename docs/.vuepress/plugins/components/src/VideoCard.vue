<template>
  <el-card>
    <template #header>
      <div class="card-header">
        <span>{{ title }}</span>
        <a v-if="downloadLink" :href="downloadLink">
          <el-button type="primary" text>
              下载素材<el-icon class="el-icon--right"><Download /></el-icon>
          </el-button>
        </a>
      </div>
    </template>
    <div class="image-text-card-content">
      <slot name="content"></slot>
    </div>
  </el-card>
</template>


<script scoped>
export default {
  name: "VideoCard",
  props: {
      title: {
          type: String,
          default: "图文教程",
      },
      downloadLink: {
        type: String,
        default: ''
      }
  },
};
</script>

<style scoped>
.card-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.image-text-card-content {
  max-height: 500px;
  overflow-y: auto;
}
.el-icon {
  margin-top: 1px;
  margin-right: 5px;
}
</style>
