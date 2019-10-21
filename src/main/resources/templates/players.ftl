<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>主页</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container">
    <div class="row">
      <div class="col-md-4">
        <ul class="nav nav-pills nav-stacked">
  <li role="presentation" class="active"><a href="player/list">列表</a></li>
  <li role="presentation"><a href="/player/add">新增</a></li>
  <li role="presentation"><a href="/player/search">搜索</a></li>
</ul>
 </div>
      <div class="col-md-8">  
<table class="table table-bordered">
<tr>
<td>姓名</td>
<td>性别</td>
<td>生日</td>
<td>经历</td>
<td>删除</td>
<td>修改</td>
</tr>
<#list players as players>
<tr>
<td>${players.name}</td>
<td>${players.gender}</td>
<td>${players.birth}</td>
<td>${players.experience}</td>
<td><a href="delete/${players.id}">删除</a></td>
<td><a href="modify/${players.id}">修改</a></td>
</tr>
</#list>
</table>
</body>
</html>