<template>
  <el-affix :offset="60">
    <el-page-header @back="goBack" style="background-color: #fff; padding: 30px 0; margin-top: -5px">
      <template #content>
        <span class="text-large font-600 mr-3">
          {{ props.content }}
        </span>
      </template>
    </el-page-header>
  </el-affix>
</template>

<script setup>
import { useRouter } from "vue-router";
const router = useRouter();
import { ElPageHeader, ElAffix } from "element-plus";
const props = defineProps(["content"]);

const goBack = () => {
  router.back();
};
</script>
