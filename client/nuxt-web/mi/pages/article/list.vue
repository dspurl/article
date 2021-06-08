<template>
  <div class="box">
    <component :listQuery="listQuery" :loading="loading" :is="template" :data="data" @getList="getList"/>
  </div>
</template>
<style lang='scss' scoped>
  @import "./scss/list";
</style>
<script>
import js from './js/list'
export default js
</script>
