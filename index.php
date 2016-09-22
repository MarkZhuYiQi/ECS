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
        $reflection=new ReflectionClass($control);  //获得类名
        $method=$reflection->getMethod($get_action);  //获取方法名
        if($method){
            $comments=$method->getDocComment();
            //如果匹配到权限注释则说明这个方法需要权限处理
            if(preg_match("/permission:{(.*?)}/i",$comments,$result)){
                if($userInfo=the_user("back")) {    //获取后台cookie，如果没有获取到就说明没有登录
                    $admin_user=$userInfo->user_name;
                    $permission = $result[1];     //匹配到后台方法能访问的权限
                    $permission = "{" . $permission . "}";    //重组成json
                    $permission = json_decode($permission);   //解码json
                    $auth = $permission->role;            //规定什么权限才能够访问这个方法
                    $userAuth = $control->authority($admin_user);    //获取该用户拥有的权限
                    if ($admin_user != "" && in_array($auth, $userAuth)) {
                        $control->$get_action();
                        $control->run();
                    } else {
                        exit("You do not have that authority!");
                    }
                }else{
                    $control->login();
                    $control->run();
                }
            }else{
                $control->$get_action();
                $control->run();
            }
        }
        exit();
    }
}

