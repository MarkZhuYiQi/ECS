<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/9/1
 * Time: 22:42
 */

//通用web函数

/**
 * @param $pname
 * @param string $method
 * @return bool|mixed|string
 * GET方法获取POST或者GET值
 * 对值进行过滤
 */
function GET($pname,$method="get"){
    $plist=$method=="get"?$_GET:$_POST; //已经成了数组
    if(isset($plist[$pname])){
        $getValue=trim($plist[$pname]);
        $getValue=strip_tags($getValue);    //去除HTML和PHP 标记
        $getValue=addslashes($getValue);    //对单双引号，反斜杠和null进行反斜线转义
        $getValue=str_replace(array("gcd"),"",$getValue);

        return $getValue;
    }else{
        return false;
    }
}

function the_user(){
    if(isset($_COOKIE[USER_LOGINKEY])){
        load_lib("user","userInfo");
//        $userInfo=new userInfo();
        $getCookie=myDecrypt($_COOKIE[USER_LOGINKEY],USERLOGIN_CRYPEKEY);
        $userInfo=unserialize($getCookie);      //必须先有这个userInfo类定义的 才能正确解序列
        var_dump($userInfo);
        if($userInfo&&$userInfo->user_name!=""&&$userInfo->user_loginIP==IP()){
            return $userInfo;
        }
        return false;
    }
    return false;
}

//memcache设置缓存
function set_cache($key,$value,$expire){
    $m=new Memcache();
    $m->connect(Cache_IP,Cache_Port);
    $m->set($key,$value,0,$expire);
}
//memcache获取缓存
function get_cache($key){
    $m=new Memcache();
    $m->connect(Cache_IP,Cache_Port);
    return $m->get($key);
}
function load_model($mName){
    //加载一个模块
    return new _Model($mName);
}
function load_lib($lib,$libName){
    //后缀必须是PHP
    require("Lib/".$lib."/".$libName.".php");
}
function IP(){
    if(!empty($_SERVER["HTTP_CLIENT_IP"])) {
        $cip = $_SERVER["HTTP_CLIENT_IP"];
    }
    elseif(!empty($_SERVER["HTTP_X_FORWARDED_FOR"])){
        $cip=$_SERVER["HTTP_X_FORWARDED_FOR"];
    }
    elseif(!empty($_SERVER["REMOTE_ADDR"])){
        $cip=$_SERVER["REMOTE_ADDR"];
    }else{
        $cip="";
    }
    return $cip;
}

include("encrypt.php");