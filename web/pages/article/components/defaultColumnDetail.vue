<template>
  <div>
    <el-breadcrumb class="container breadcrumb" separator="/">
      <el-breadcrumb-item>
        <NuxtLink :to="{ path: '/' }">
          首页
        </NuxtLink>
      </el-breadcrumb-item>
      <el-breadcrumb-item v-if="data.breadcrumb.length>0" v-for="(item, index) in data.breadcrumb" :key="index">
        <NuxtLink :to="{ path: '/article/list', query: { id: item.id }}">
          {{item.name}}
        </NuxtLink>
      </el-breadcrumb-item>
    </el-breadcrumb>
    <div class="box container">
      <div class="right">
        <div v-loading="loading" class="list-box">
          <div class="title">{{data.column.name}}</div>
          <div class="content" v-html="data.column.column_property.details"></div>
          <div class="time">{{data.column.created_at.split(" ")[0]}}</div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default{
	name: 'DefaultColumnDetail',
  props: {
    data: {
      type: Object,
      default: {}
    },
    loading: {
      type: Boolean,
      default: false
    },
    listQuery: {
      type: Object,
      default: {}
    }
  },
	data() {
		return {
		};
	},
	watch: {
	},
  mounted() {

  },
	methods:{
    getList(){
      this.$emit('getList')
    }
	},
}
</script>

<style lang="scss" scoped>
  .breadcrumb{
    margin-top:20px;
    margin-bottom: 20px;
  }
  .box{
    display: flex;
    align-items: flex-start;
    margin-bottom: 30px;
    min-height: 600px;
    .left{
      width: 200px;
      background-color: #ffffff;
      margin-right: 20px;
      padding: 30px 10px 30px 30px;
      .dt{
        font-size: 16px;
        font-weight: 400;
        line-height: 52px;
        color: #212121;
      }
      .dd{
        font-size: 14px;
        color: #757575;
        display: block;
        line-height: 35px;
        overflow: hidden;
        text-overflow:ellipsis;
        white-space: nowrap;
      }
      .dd.on{
        color: $font-color-main;
      }
      .dd:hover{
        color: $font-color-main;
      }
    }
    .right{
      flex:1;
      background-color: #ffffff;
      padding:40px;
      .title{
        font-weight: bold;
        font-size: 22px;
        line-height: 25px;
        padding-bottom: 30px;
        padding-top:10px;
      }
      .content{
        font-size: 16px;
        line-height: 20px;
      }
      .time{
        font-size: 16px;
        padding-top:20px;
        text-align: right;
        color: #757575;
      }
    }
  }
</style>
