<template>
  <div v-loading="loading" class="createPost-container" style="padding-top: 40px">
    <el-form ref="ruleForm" :model="ruleForm" :rules="rules" label-width="100px" class="ruleForm" style="padding-left: 200px;padding-right:20px;width: 900px;">
      <el-form-item label="文章ID" prop="article_id" style="width:400px;">
        <el-input v-model="ruleForm.article_id" clearable/>
      </el-form-item>
      <el-form-item label="详情" prop="details" style="width:400px;">
        <el-input :rows="2" v-model="ruleForm.details" type="textarea" clearable/>
      </el-form-item>
      <el-form-item>
        <el-button :loading="formLoading" type="primary" @click="dialogStatus==='create'?create():edit()">提交</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>
<script>
import js from '../js/detail'
export default js
</script>
