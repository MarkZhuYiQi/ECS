<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/9/1
 * Time: 22:17
 */

//$str="/ecs/index/getIndex/index/getProd/";
//$str="/ecs/index/getIndex/";
$str="http://localhost/ecs/m_index/index/cssback/icon.css";
//$pattern="/^\/ecs[\/a-zA-Z0-9]*?\/([a-zA-Z]{2,10})\/([a-zA-Z]{3,20})\/$/";
//$pattern="/^[a-zA-Z0-9\/]*?([a-zA-Z]{2,10})\/([a-zA-Z]{3,20})\/$/";
$pattern="/^[\w\/\:\_]*?css\/(\.*)/";
if(preg_match_all($pattern,$str,$result)){
    var_dump($result);
    var_dump($control=$result[1][0]);
    var_dump($action=$result[2][0]);
    var_dump("/ecs/index.php?control=$control&action=$action");
}