<?php
/**
 * Created by PhpStorm.
 * User: SZL4ZSY
 * Date: 9/1/2016
 * Time: 10:42 AM
 */

class index extends _Main{
    function getIndex(){
        //模板加载在这个函数里
        $this->setViewName("prod");
        $this->addObject("ProdName","我的第一个商品");
    }
}