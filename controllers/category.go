package controllers

import (
	"github.com/astaxie/beego"
)

type CategoryController struct {
	beego.Controller
}

func (c *CategoryController) Add() {
	c.Data["IsCategory"] = true
	c.TplNames = "category_add.tpl"
}
