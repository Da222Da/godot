<template>
    <el-card class="box-card">
        <template #header>
            <div class="card-header">
                <span>关键知识点</span>
            </div>
        </template>
        <span v-for="(item, index) in data">
            <el-popover
                trigger="hover"
                placement="top-start"
                :title="item.title || ''"
                :width="item.width || 350"
                :content="item.content || ''"
            >
                <template #reference>
                    <el-link :underline="false" :type="item.type || 'primary'">
                        {{ index != 0 ? "、" : "" }}
                        {{ item.title }}
                    </el-link>
                </template>
            </el-popover>
        </span>
    </el-card>
</template>

<script>
export default {
    name: "BasicConcept",
    props: {
        data: {
            type: Array,
            default: [],
        },
    },
};
</script>
