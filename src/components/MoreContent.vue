<template>
  <div class="more-content">
    <div class="title">
      <all-application theme="two-tone" size="24" :fill="['#efefef', '#00000020']" />
      <span>编程导航</span>
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
    title: "RSS",
    url: "https://www.qireader.com/",
  },
  {
    title: "Web技术周刊",
    desc: "语雀-zenany",
    url: "https://www.yuque.com/zenany/fe_weekly",
  },
  {
    title: "前端周刊",
    desc: "语雀-zhangbao",
    url: "https://www.yuque.com/zhangbao/weekly",
  },
  {
    title: "front-end-developers",
    desc: "X-Lists",
    url: "https://x.com/i/lists/233096513",
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
      width: 200px;
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
