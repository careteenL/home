<template>
  <div class="production">
    <v-md-preview :text="mdSource" class="md"></v-md-preview>
  </div>
</template>

<script setup>
import useBodyStyle from "../../utils/useBodyStyle";
import mdSource from "./README.md?raw";

useBodyStyle();
</script>

<style lang="scss" scoped>
::v-deep(*) {
  color: #000;
}
.production {
  overflow: auto;
  .md {
    height: 100vh;
  }
}
</style>
