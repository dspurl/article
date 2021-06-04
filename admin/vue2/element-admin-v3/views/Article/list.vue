<template>
  <div class="app-container">
    <div class="filter-container">
      <router-link v-permission="$store.jurisdiction.ArticleCreate" :to="'ArticleCreate'">
        <el-button class="filter-item" style="margin-left: 10px;float:right;" type="primary" icon="el-icon-edit">添加</el-button>
      </router-link>
    </div>
    <el-table
      v-loading="listLoading"
      ref="multipleTable"
      :key="tableKey"
      :data="list"
      border
      fit
      highlight-current-row
      style="width: 100%;"
      @sort-change="sortChange"
      @selection-change="handleSelectionChange">
      <el-table-column
        type="selection"
        width="55"
        fixed="left"/>
      <el-table-column label="ID" prop="id">
        <template slot-scope="scope">
          <span>{{ scope.row.id }}</span>
        </template>
      </el-table-column>
      <el-table-column label="栏目ID" prop="column_id">
        <template slot-scope="scope">
          <span>{{ scope.row.column_id }}</span>
        </template>
      </el-table-column>
      <el-table-column label="文章名称" prop="name">
        <template slot-scope="scope">
          <span>{{ scope.row.name }}</span>
        </template>
      </el-table-column>
      <el-table-column label="关键字" prop="keyword">
        <template slot-scope="scope">
          <span>{{ scope.row.keyword }}</span>
        </template>
      </el-table-column>
      <el-table-column label="描述" prop="describes">
        <template slot-scope="scope">
          <span>{{ scope.row.describes }}</span>
        </template>
      </el-table-column>
      <el-table-column label="模板" prop="template">
        <template slot-scope="scope">
          <span>{{ scope.row.template }}</span>
        </template>
      </el-table-column>
      <el-table-column label="是否显示" prop="is_show">
        <template slot-scope="scope">
          <span>{{ scope.row.is_show }}</span>
        </template>
      </el-table-column>
      <el-table-column label="排序" prop="sort">
        <template slot-scope="scope">
          <span>{{ scope.row.sort }}</span>
        </template>
      </el-table-column>
      <el-table-column label="访问量" prop="pv">
        <template slot-scope="scope">
          <span>{{ scope.row.pv }}</span>
        </template>
      </el-table-column>
      <el-table-column label="操作" class-name="small-padding fixed-width" width="250" fixed="right">
        <template slot-scope="scope">
          <router-link v-permission="$store.jurisdiction.ArticleEdit" :to="{ path: 'ArticleEdit', query: { id: scope.row.id }}">
            <el-tooltip class="item" effect="dark" content="编辑" placement="top-start">
              <el-button type="primary" icon="el-icon-edit" circle/>
            </el-tooltip>
          </router-link>
          <el-tooltip v-permission="$store.jurisdiction.ArticleDestroy" class="item" effect="dark" content="删除" placement="top-start">
            <el-button :loading="formLoading" type="danger" icon="el-icon-delete" circle @click="handleDelete(scope.row)"/>
          </el-tooltip>
        </template>
      </el-table-column>
    </el-table>
    <!--分页-->
    <div class="pagination-operation">
      <div class="operation">
        <el-button size="mini" @click="handleCheckAllChange">全选/反选</el-button>
        <el-button v-permission="$store.jurisdiction.ArticleDestroy" :loading="formLoading" size="mini" type="danger" @click="handleAllDelete()">删除</el-button>
      </div>
      <pagination v-show="total>0" :total="total" :page.sync="listQuery.page" :limit.sync="listQuery.limit" class="pagination" @pagination="getList"/>
    </div>
  </div>
</template>
<style lang='scss' scoped>
  @import "./scss/list";
</style>
<script>
import js from './js/list'
export default js
</script>
