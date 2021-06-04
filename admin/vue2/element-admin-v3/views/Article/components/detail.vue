<template>
  <div v-loading="loading" class="createPost-container" style="padding-top: 40px">
    <el-form ref="ruleForm" :model="ruleForm" :rules="rules" label-width="100px" class="ruleForm" style="padding-left: 200px;padding-right:20px;width: 900px;">
      <el-form-item label="栏目ID" prop="column_id" style="width:400px;">
        <el-input v-model="ruleForm.column_id" clearable/>
      </el-form-item>
      <el-form-item label="文章名称" prop="name" style="width:400px;">
        <el-input v-model="ruleForm.name" maxlength="60" clearable/>
      </el-form-item>
      <el-form-item label="关键字" prop="keyword" style="width:400px;">
        <el-input v-model="ruleForm.keyword" maxlength="255" clearable/>
      </el-form-item>
      <el-form-item label="描述" prop="describes" style="width:400px;">
        <el-input v-model="ruleForm.describes" maxlength="255" clearable/>
      </el-form-item>
      <el-form-item label="模板" prop="template" style="width:400px;">
        <el-input v-model="ruleForm.template" maxlength="30" clearable/>
      </el-form-item>
      <el-form-item label="是否显示" prop="is_show" style="width:400px;">
        <el-radio-group v-model="ruleForm.is_show">
          <el-radio :label="0">否</el-radio>
          <el-radio :label="1">是</el-radio>
        </el-radio-group>
      </el-form-item>
      <el-form-item label="排序" prop="sort" style="width:400px;">
        <el-input v-model="ruleForm.sort" clearable/>
      </el-form-item>
      <el-form-item label="访问量" prop="pv" style="width:400px;">
        <el-input v-model="ruleForm.pv" clearable/>
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
