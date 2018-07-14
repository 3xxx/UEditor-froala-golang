# UEditor-froala-golang

基于golang go语言（beego框架）下的UEditor或者froala服务端，这个是从EngineerCMS项目中分离出来的，EngineerCMS已经弃用Ueditor，改为froala富文本编辑器，但保留对ueditor编辑器的支持，具体可参见该[项目](https://github.com/3xxx/engineercms)。

[froala应用demo](http://112.74.42.44:8086/)

因为Ueditor停止了维护，bug挺多（上传图片超宽，图片大小和表格大小不能调整，表格样式冲突，视频样式冲突等等），最最关键的是我放在阿里云上的服务，浏览器总是提示说ueditor.all.min.js语法错误，无解。

froala相对于ueditor，配置简单到了极点，哪里像ueditor那样，还要什么config啊，controller啊，一堆的代码，froala只要写一小段服务端的图片（视频、文件）存储代码就行了，而且froala里粘贴的word图文，图片自动上传，哪里像ueditor那样还要word图片转存啊。

[froala详解](https://blog.csdn.net/hotqin888/article/details/80978876)

froala结合golang的使用见[engineercms](https://github.com/3xxx/EngineerCMS/blob/master/controllers/froala.go)

[beego框架](https://github.com/astaxie/beego)

UEditor设置conf/config.json和static/ueditor/ueditor.config.js——beego路由设置route——控制器controllers中的ueditor.go

本地调试地址：http://127.0.0.1/category/add


参考https://github.com/jimmykuu/Go-UEditor
但其一直未更新
