<template>
  <div class="box">
    <component :is="template" :loading="loading" :data="data"/>
  </div>
</template>
<style lang='scss' scoped>
  @import "./scss/detail";
</style>
<script>
import js from './js/detail'
export default js
</script>
