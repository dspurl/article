INSERT INTO `auth_rules` (`id`, `api`, `url`, `icon`, `title`, `pid`, `state`, `sort`) VALUES
(175, 'ArticleManage', '', 'article', '文章管理', 0, 1, 0),
(176, 'Column', '', '', '栏目', 175, 1, 0),
(177, 'ColumnList', '', '', '栏目列表', 176, 1, 0),
(178, 'CreateColumn', '', '', '添加栏目', 176, 0, 0),
(179, 'EditColumn', '', '', '编辑栏目', 176, 0, 0),
(180, 'DeleteColumn', '', '', '删除栏目', 176, 0, 0),
(181, 'Article', '', '', '文章', 175, 1, 0),
(182, 'ArticleList', '', '', '文章列表', 181, 1, 0),
(183, 'CreateArticle', '', '', '添加文章', 181, 0, 0),
(184, 'EditArticle', '', '', '编辑文章', 181, 0, 0),
(185, 'DeleteArticle', '', '', '删除文章', 181, 0, 0);