<template>
  <div class="production">
    <v-md-preview :text="mdSource" class="md"></v-md-preview>
  </div>
</template>

<script setup>
import mdSource from "./README.md?raw";
</script>

<style lang="scss" scoped>
.production {
  overflow: auto;
  .md {
    height: 100vh;
  }
}
</style>
