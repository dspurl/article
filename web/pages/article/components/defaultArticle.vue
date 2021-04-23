<template>
  <div>
    <el-breadcrumb class="breadcrumb container" separator="/">
      <el-breadcrumb-item>
        <NuxtLink :to="{ path: '/' }">
          首页
        </NuxtLink>
      </el-breadcrumb-item>
      <el-breadcrumb-item>
        <NuxtLink :to="{ path: '/article/list', query: { id: data.column.id }}">
          {{data.column.name}}
        </NuxtLink>
      </el-breadcrumb-item>
      <el-breadcrumb-item>{{data.name}}</el-breadcrumb-item>
    </el-breadcrumb>
    <div class="box container">
      <div>
        <div class="title">{{data.name}}</div>
        <div class="content" v-html="data.article_property.details"></div>
        <div class="time">{{data.created_at.split(" ")[0]}}</div>
      </div>
    </div>
  </div>
</template>

<script>
export default{
	name: 'DefaultArticle',
  props: {
    data: {
      type: Object,
      default: {}
    },
    loading: {
      type: Boolean,
      default: false
    },
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

	},
}
</script>

<style lang="scss" scoped>
  .breadcrumb{
    margin-top:20px;
    margin-bottom: 20px;
  }
  .box{
    background-color: #ffffff;
    padding:40px;
    margin-bottom: 30px;
    min-height: 600px;
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
</style>
