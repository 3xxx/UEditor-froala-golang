<!DOCTYPE html>
<title>项目&目录 - 水利设计CMS系统</title>
<link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css"  />
<script type="text/javascript" src="/static/js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="/static/js/bootstrap.min.js"></script>

    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <script type="text/javascript" charset="utf-8" src="/static/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="/static/ueditor/ueditor.all.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="/static/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>

<body>
<div class="col-lg-12">

  <form method="post" action="/category" enctype="multipart/form-data">
    <div class="form-group">
      <label>项目编号：</label>
      <input id="number" class="form-control"  placeholder="Enter ProjectNumber:上传图片之前必须先填写项目编号和项目名称" name="number"></div>
    <div class="form-group">
      <label>项目名称：</label>
      <input id="name" class="form-control"  placeholder="Enter ProjectName:上传图片之前必须先填写项目编号和项目名称" name="name"></div>
    <label>项目简介:</label>
    <div>
      <script id="editor" type="text/plain" style="height:500px;"></script>
    </div>
    <hr>
    <!-- <button type="submit" class="btn btn-default" onclick="return checkInput();">添加</button>
  -->
</form>
</div>

<script type="text/javascript">
    //实例化编辑器
    //议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');
    /* 1.传入函数,命令里执行该函数得到参数表,添加到已有参数表里 */
    ue.ready(function () {
    // 文件上传  UEditor中调用webupload事件不行。

    ue.addListener('focus', function () {//startUpload start-upload beforeExecCommand是在插入图片之前触发
     var name = $('#name').val();
     var number = $('#number').val();
    ue.execCommand('serverparam', {
        "number":number,
        'name': name,
    });
});
});
</script>
</body>
</html>