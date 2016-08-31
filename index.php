<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/8/31
 * Time: 21:59
 */
include("my.php");
include ("Lib/db/NotORM.php");

$pdo=new PDO(DB_DSN,DB_user,DB_pass);
$pdo->exec("set names utf8");
$db=new NotORM($pdo);

echo $db->ecs_news()->select("ecs_title","ecs_intr")->order("id DESC")->limit(10);

/*foreach($db->ecs_news() as $news){
    echo $news["news_title"].",".$news["news_intr"]."<br />";
}*/


