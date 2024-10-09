<template>
  <div class="more-content">
    <div class="title">
      <all-application theme="two-tone" size="24" :fill="['#efefef', '#00000020']" />
      <span>㊙️密花园</span>
    </div>
    <div class="all-app">
      <div class="app-item" v-for="(item, index) in apps" :key="index" @click="jumpLink(item)">
        <span class="item-title">{{ item.title }}</span>
        <span v-if="item.desc" class="item-desc">{{ item.desc }}</span>
      </div>
    </div>
  </div>
</template>

<script setup>
import { AllApplication } from "@icon-park/vue-next";

const apps = [
  {
    title: "Careteen's 编程秘籍",
    desc: "收集前端周刊/程序猿面经/考公资料/英语学习/视频网站等资料",
    url: "https://bve519i9rzo.feishu.cn/base/M88VbQpBeaY1kMsCpUGcDgWrnlh?from=from_copylink",
  },
];

const jumpLink = (item) => {
  window.open(item.url, "_blank");
};
</script>

<style lang="scss" scoped>
.more-content {
  width: 100%;
  height: 100%;
  .title {
    display: flex;
    flex-direction: row;
    align-items: center;
    margin: 0.2rem 0 1.5rem;
    font-size: 1.1rem;
    .i-icon {
      display: flex;
      justify-content: center;
      align-items: center;
      margin-right: 6px;
    }
  }
  .all-app {
    display: flex;
    flex-wrap: wrap;
    .app-item {
      display: flex;
      align-content: center;
      flex-direction: column;
      align-items: center;
      height: 100px;
      width: 100%;
      justify-content: center;
      margin-right: 10px;
      margin-bottom: 10px;
      padding: 6px;
      border-radius: 8px;
      border: 1px solid #fff;
      cursor: pointer;
      .item-title {
        font-weight: 600;
      }
      .item-desc {
        margin-top: 2px;
      }
    }
  }
}
</style>
