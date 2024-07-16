<template>
    <div class="video-container">
        <iframe
            id="myVideo"
            :src="videoSrc"
            frameborder="0"
            scrolling="no"
            allow="autoplay"
            framespacing="0"
            allowfullscreen=""
            autoplay="autoplay"
        ></iframe>
    </div>
</template>

<script scoped>
export default {
    name: "VideoIframe",
    props: {
        videoId: {
            type: String,
            required: true,
            default: "",
        },
    },
    computed: {
        videoSrc() {
            return `//player.bilibili.com/player.html?aid=${this.videoId}&amp;cid=&amp;page=&amp;high_quality=1&amp;danmaku=0&amp;as_wide=1`;
        },
    },
};
</script>

<style scoped>
.video-container iframe {
    height: 300px;
    width: 100%;
    margin: 20px 0;
}
</style>
