<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/9/1
 * Time: 22:42
 */

//通用web函数
function GET($pname,$method="get"){
    $plist=$method=="get"?$_GET:$_POST; //已经成了数组
    print_r($plist);
    print_r($pname);
    if(isset($plist[$pname])){
        $getValue=trim($plist[$pname]);
        $getValue=str_replace(array("gcd"),"",$getValue);

        return $getValue;
    }else{
        return false;
    }
}