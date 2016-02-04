package main

import (
	_ "UEditor-golang/routers"
	"github.com/astaxie/beego"
	"os"
)

func main() {
	//创建附件目录
	os.Mkdir("attachment", os.ModePerm)
	//启动beeego
	beego.Run()
}
