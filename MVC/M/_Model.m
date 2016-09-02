<?php

class _Model{
    public $_modelName="";
    public $_db=false;
    public $_result=false;
    function _Model($mName){
        //$mName暂时代表表名
        $this->_modelName=DB_Prefix."_".$mName;     //user=>shop_user
        $this->modelInt();      //初始化
    }
    function modelInt(){
        //初始化模块,将文件include进来
        load_lib("db","NotORM");        //将NotORM.php加载进来
        $pdo=new PDO(DB_DSN,DB_user,DB_pass);
            $structure=new NotORM_Structure_Convention(
                $primary='id',          //这里告诉NotORM我们的主键都是ID这种英文单词
                $foreign='%sid',        //同理，外键都是外表名+id,这很重要，否则NotORM拼接SQL都会拼错
                $table='%s',
                $prefix=''              //表前缀
            );
        $pdo->exec("set names utf8");
        $this->_db=new NotORM($pdo,$structure);  //初始化
    }
    function load($where){                  //加载表格
        $tbName=$this->_modelName;          //表名
        if(trim($where)=="")return false;   //禁止程序员没有任何条件的加载全表
        $this->_result=$this->_db->$tbName()->select("*")->where($where)->limit(1);
    }
    function test(){
        return $this->_result;
    }
    function __get($pname){
        if($this->_result && count($this->_result)==1){
//            $ret=$this->_result[0];
            echo $ret=$this->_result->fetch();
            return $ret[$pname];
        }
        return false;
    }
}