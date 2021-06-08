#栏目文章

## 说明
- 该插件依赖dsshop项目，而非通用插件
- 支持版本:dshop v2.2及以上
- 已同步版本：dsshop v2.2.0

## 功能介绍
- 支持为栏目和文章添加缩略图
- 栏目支持无限级分类
- 栏目如果未设置列表，将可以直接当文章用
- 前端展示默认展示所有栏目，且不分父子类目
- 前端展示层级为：栏目列表->文章列表->文章详情或栏目列表->栏目详情
- 栏目文章已做访问次数记录，用户每访问一次文章详情/栏目详情，记一次

## 使用说明
#### 一、 下载article最新版
#### 二、 解压article到项目plugin/list目录下
#### 三、 登录dsshop后台，进入插件列表
#### 四、 在线安装（请保持dsshop的目录结构，且在dev下运行，如已部署到线上，请在本地测试环境安装，因涉及文件操作，请不要在正式环境中进行插件操作）
#### 五、 插件示例代码，以下仅供参考，请根据自己的业务自行实现
 ```vue
#client/Dsshop/pages/user/user.vue
<template>
	<list-cell icon="icon-xiaoxi" iconColor="#9789f7" title="帮助中心" @eventClick="navToNoValidation('/pages/article/column')"></list-cell>
</template>
<script>
</script>
 ```
 ##### 使用文章，例如底部添加文章链接
```vue
#web/components/Footer.vue
<template>
	<!-- 服务end-->
    <el-divider class="container"></el-divider>
    <!-- 链接-->
    <div class="links container">
      <div class="li">
        <div class="dt">购物指南</div>
        <NuxtLink class="dd" :to="{ path: '/article/list', query: { id: 7 }}">销售时间</NuxtLink>
        <NuxtLink class="dd" :to="{ path: '/article/list', query: { id: 8 }}">发货时效</NuxtLink>
        <NuxtLink class="dd" :to="{ path: '/article/list', query: { id: 9 }}">包邮政策</NuxtLink>
      </div>
      <div class="li">
        <div class="dt">支付方式</div>
        <NuxtLink class="dd" :to="{ path: '/article/list', query: { id: 17 }}">在线支付</NuxtLink>
      </div>
      <div class="li">
        <div class="dt">账户管理</div>
        <NuxtLink class="dd" :to="{ path: '/article/list', query: { id: 17 }}">账户注册</NuxtLink>
        <NuxtLink class="dd" :to="{ path: '/article/list', query: { id: 17 }}">忘记密码</NuxtLink>
      </div>
      <div class="li">
        <div class="dt">关注我们</div>
        <NuxtLink class="dd" :to="{ path: '/article/list', query: { id: 17 }}">关于我们</NuxtLink>
        <NuxtLink class="dd" :to="{ path: '/article/list', query: { id: 18 }}">加入我们</NuxtLink>
        <NuxtLink class="dd" :to="{ path: '/article/list', query: { id: 17 }}">联系我们</NuxtLink>
      </div>
    </div>
    <!-- 链接end-->
</template>
<script>
</script>
```


## 如何更新插件
- 将最新版的插件下载，并替换老的插件，后台可一键升级
## 如何卸载插件
- 后台可一键卸载