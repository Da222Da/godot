<template>
  <el-card>
    <template #header>
      <div style="display: flex">
        <el-icon :size="20">
          <Notebook />
        </el-icon>
        <span>{{ title }}</span>
      </div>
    </template>
    <div class="image-text-card-content">
      <slot name="content"></slot>
    </div>
  </el-card>
</template>

<script>
export default {
  name: "ImageTextCard",
  props: {
    title: {
      type: String,
      default: "图文教程"
    }
  }
};
</script>

<style scoped>
.image-text-card-content {
  max-height: 500px;
  overflow-y: auto;
}
.el-icon {
  margin-top: 1px;
  margin-right: 5px;
}
</style>
