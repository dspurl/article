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
      <div class="left" v-if="data.breadcrumb.length>0">
        <div class="dt">{{data.breadcrumb[data.breadcrumb.length-1].name}}</div>
        <NuxtLink class="dd" :class="{on: data.column.id === item.id}" v-for="(item, index) in data.menu" :key="index" :to="{ path: '/article/list', query: { id: item.id }}">{{item.name}}</NuxtLink>
      </div>
      <div class="right">
        <div v-loading="loading" class="list-box">
          <NuxtLink class="li" v-for="(item, index) in data.paginate.data" :key="index" :to="{ path: '/article/detail', query: { id: item.id }}">
            <div class="name">{{item.name}}</div>
            <div class="time">{{item.created_at.split(" ")[0]}}</div>
          </NuxtLink>
          <pagination v-if="data.paginate.total>0" :total="data.paginate.total" :page.sync="listQuery.page" :limit.sync="listQuery.limit" class="pagination" @pagination="getList"/>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default{
	name: 'DefaultColumn',
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
      padding:20px;
      .list-box{
        .li{
          display: flex;
          cursor: pointer;
          font-size: 16px;
          color: #212121;
          border-bottom: 1px solid #efeded;
          line-height: 55px;
          .time{
            width: 100px;
          }
          .name{
            flex:1;
          }
        }
        .li:hover{
          color: $font-color-main;
        }
      }
    }
  }
</style>
