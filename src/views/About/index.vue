<template>
  <div class="about">
    <pdf :src="pdfSrc" class="pdf" />
  </div>
</template>

<script setup>
import pdf from "@vue-office/pdf";

// TODO 更换简历 pdf
const pdfSrc = "http://static.shanhuxueyuan.com/test.pdf";
</script>

<style lang="scss" scoped>
.about {
  height: 100vh;
  .pdf {
    height: 100%;
  }
}
</style>
