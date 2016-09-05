<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2016/9/5
 * Time: 21:52
 */

function red($str){
    return "<span style='color:red'>$str</span>";
}

$str="{red('user.user_name')} {username} <br />";
$varName="user";
if(preg_match_all("/{(.*?\(\'".$varName."\.[\w]{1,30}\'\))}/",$str,$result)){
    $result=$result[1];
    foreach($result as $r){
        $r=str_replace("user.user_name","Mark",$r);
        eval('$last='.$r.";");
        if($last){
            echo $last;
        }
    }
}