<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/9/1
 * Time: 22:17
 */

//$str="/ecs/index/getIndex/index/getProd/";
//$str="/ecs/index/getIndex/";
//$str="http://localhost/ecs/m_index/index/cssback/icon.css";
$str="<td>{genInputLabel('tb.COLUMN_COMMENT')}:</td>";
//$pattern="/^\/ecs[\/a-zA-Z0-9]*?\/([a-zA-Z]{2,10})\/([a-zA-Z]{3,20})\/$/";
//$pattern="/^[a-zA-Z0-9\/]*?([a-zA-Z]{2,10})\/([a-zA-Z]{3,20})\/$/";
//$pattern="/^[\w\/\:\_]*?css\/(\.*)/";
//$pattern="/\{(?<varObject0>[^\{]*?\(\'(?<varObject1>[\w]{1,30})\'\))\}|{(?<varObject2>[\w]{1,30}?)}/is";
$pattern="/\{(?<varObject0>[^\{]*?\(\'(?<varObject1>[\w\.]{1,30})\'\))\}|{(?<varObject2>[\w\.]{1,30}?)}/is";
if(preg_match_all($pattern,$str,$result)){
    var_dump($result);
}

var_dump(intval("sdadsa"));