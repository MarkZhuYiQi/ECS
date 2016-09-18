<?php

/**
 * Class _Model
 * 模型的主文件
 */
class _Model{
    public $_modelName="";
    public $_db=false;
    public $_result=false;
    public $_dsn;

    /**
     * _Model constructor.
     * @param $mName
     * 这其实就是构造函数，现在很少用，在没有__construct函数下会去寻找同名函数作为构造函数
     * 相当于__construct($mName)
     */
    function _Model($mName,$dsn=DB_DSN){
        $this->_dsn=$dsn;
        if($dsn=DB_DSN){
            //$mName暂时代表表名
            $this->_modelName=DB_Prefix."_".$mName;     //user=>shop_user
        }else{
            $this->_modelName=$mName;     //user=>shop_user
        }
        $this->modelInt();      //初始化
    }

    /**
     * 初始化PDO和NotORM
     */
    function modelInt(){
        //初始化模块,将文件include进来
        load_lib("db","NotORM");        //将NotORM.php加载进来
        $pdo=new PDO($this->_dsn,DB_user,DB_pass);
        $pdo->query("set names utf8");
            $structure=new NotORM_Structure_Convention(
                $primary='id',          //这里告诉NotORM我们的主键都是ID这种英文单词
                $foreign='%sid',        //同理，外键都是外表名+id,这很重要，否则NotORM拼接SQL都会拼错
                $table='%s',
                $prefix=''              //表前缀
            );
        $pdo->exec("set names utf8");
        $this->_db=new NotORM($pdo,$structure);  //初始化
    }

    /**
     * @param $where
     * @return bool
     * 加载当前数据表中在特定条件下筛选出的数值
     */
    function load($where){                  //加载表格
        $tbName=$this->_modelName;          //表名
        if(trim($where)=="")return false;   //禁止程序员没有任何条件的加载全表
        $this->_result=$this->_db->$tbName()->select("*")->where($where)->limit(1);
    }
    function loadAll($cols="",$where=""){                  //加载表格
        $tbName=$this->_modelName;          //表名
        if($cols=""){
            $this->_result=$this->_db->$tbName();
        }else{
            $this->_result=$this->_db->$tbName()->select($cols)->where($where);
        }
    }

    function all(){
        return $this->_result;
    }

    function insert($array){
        return $this->_db->$tbName()->insert($array);
    }
    function update($array){
        return $this->_db->$tbName()->update($array);
    }

    /**
     * @param $pname
     * @return bool
     * 魔术方法，获取私有变量
     * 对查询结果做处理，取出单条，然后返回单条结果
     */
    function __get($pname){     //魔术方法，在该对象下无法获取某个变量时就会执行他试图寻找变量
        if($this->_result && count($this->_result)==1){
            $ret=$this->_result[1];       //取出一条数据，也可以写成$this->_result[0], fetch()是取下一行的
            if($ret[$pname]){
                return $ret[$pname];
            }else{
                return false;
            }
        }
        return false;
    }
}