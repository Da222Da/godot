<template>
    <el-button-group>
        <span v-for="item in data">
            <span v-if="(item.elType || 'tooltip') == 'tooltip'">
                <el-tooltip
                    effect="dark"
                    placement="top-start"
                    :content="item.content || ''"
                >
                    <el-button :type="item.type || 'primary'" size="small">
                        {{ item.title }}
                    </el-button>
                </el-tooltip>
            </span>
            <span v-else-if="item.elType == 'popover'">
                <el-popover placement="top-start" :width="400" trigger="hover">
                    <template #reference>
                        <el-button :type="item.type || 'primary'" size="small">
                            {{ item.title }}
                        </el-button>
                    </template>
                    <template #default>
                        <div v-html="item.content || ''"></div>
                    </template>
                </el-popover>
            </span>
        </span>
    </el-button-group>
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
