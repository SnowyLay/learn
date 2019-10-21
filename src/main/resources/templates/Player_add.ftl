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
  <li role="presentation"><a href="player/list">列表</a></li>
  <li role="presentation" class="active"><a href="/player/add">新增</a></li>
  <li role="presentation"><a href="/player/search">搜索</a></li>
</ul>
 </div>
      <div class="col-md-8">  
 <form action="/player/do_add">
            <div class="form-group">
                <label for="name">姓名</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="请输入选手名字">
            </div>
            <div class="form-group">
                <label for="gender">性别</label>
                <input type="text" class="form-control" id="gender" name="gender" placeholder="请输入选手性别">
            </div>
            <div class="form-group">
                <label for="birth">生日</label>
                <input type="text" class="form-control" id="birth" name="birth" placeholder="请输入选手生日">
            </div>
            <div class="form-group">
                <label for="experience">经历</label>
                <input type="text" class="form-control" id="experience" name="experience" placeholder="请输入选手经历">
            </div>
            <button type="submit" class="btn btn-default">确认</button>
</form>
</html>
