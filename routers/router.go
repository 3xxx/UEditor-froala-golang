package routers

import (
	"UEditor-golang/controllers"
	"github.com/astaxie/beego"
)

func init() {
	beego.Router("/controller", &controllers.UeditorController{}, "*:ControllerUE")
	// beego.Router("/category", &controllers.CategoryController{}) //相当于get
	beego.Router("/category/add", &controllers.CategoryController{}, "get:Add")
	// beego.AutoRouter(&controllers.CategoryController{}) //这句代替上句也行
	beego.Router("/attachment/*", &controllers.AttachController{})
}
