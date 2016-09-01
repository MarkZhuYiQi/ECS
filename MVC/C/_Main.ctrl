<?php
/**
 * Created by PhpStorm.
 * User: SZL4ZSY
 * Date: 9/1/2016
 * Time: 11:01 AM
 */

class _Main{
    var $_viewName="index";
    var $_objList=array();  //变量数组
    function addObject($objName,$objValue){
        $this->_objList[$objName]=$objValue;
    }
    function setViewName($vname){
        //设置view的名称
        $this->_viewName=$vname;
    }
    //执行MVC架构所有事宜
    function run(){
        extract($this->_objList);   //解包变量值

        include("MVC/V/".CURRENT_VIEWPATH."/head.tpl"); //加载头模板

        include("MVC/V/".CURRENT_VIEWPATH."/".$this->_viewName.".tpl"); //加载业务模板

        include("MVC/V/".CURRENT_VIEWPATH."/footer.tpl"); //加载尾模板
    }
}