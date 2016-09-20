<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/8/31
 * Time: 21:59
 * 路由文件，根据网址中的控制器名和方法调用不同的功能
 * apache重写了url格式，变成了伪静态，http://localhost/ecs/index.php?control=index&action=getIndex&id=2333  same as
 * http://localhost/ecs/index.php/index/getIndex/?id=2333
 */
//error_reporting(E_ALL & ~E_NOTICE);
include("my.php");
require("Common/functions.php");    //加载全站函数文件
require("MVC/C/_Main.ctrl");        //require 遇到错误立马停止，include不停止继续加载，加载control主文件
require("MVC/M/_Model.m");          //加载Model主文件
$get_control=isset($_GET["control"])?trim($_GET["control"]):"index";
$get_action=isset($_GET["action"])?trim($_GET["action"]):"index";

if(file_exists("MVC/C/".$get_control.".ctrl")){
    require("MVC/C/".$get_control.".ctrl");
    $control=new $get_control();
    if(method_exists($control,$get_action)){
        $control->$get_action();
        $control->run();
    }
}

