<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/8/31
 * Time: 21:59
 */

include("my.php");
include ("Lib/db/NotORM.php");

/*$pdo=new PDO(DB_DSN,DB_user,DB_pass);
$pdo->exec("set names utf8");
$db=new NotORM($pdo);

echo $db->ecs_news()->select("ecs_title","ecs_intr")->order("id DESC")->limit(10);*/

/*foreach($db->ecs_news() as $news){
    echo $news["news_title"].",".$news["news_intr"]."<br />";
}*/

require("MVC/C/_Main.php");     //require 遇到错误立马停止，include不停止继续加载，加载control主文件
$get_control=isset($_GET["control"])?trim($_GET["control"]):"index";
$get_action=isset($_GET["action"])?trim($_GET["action"]):"index";

if(file_exists("MVC/C/".$get_control.".php")){
    require("MVC/C/".$get_control.".php");
    $control=new $get_control();
    if(method_exists($control,$get_action)){
        $control->$get_action();
        $control->run();
    }
}


