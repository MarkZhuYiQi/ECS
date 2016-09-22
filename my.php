<?php
    define("DB_Prefix","ecs");     //表前缀
    define("DB_user","root");
    define("DB_pass","7777777y");
    define("DB_DSN","mysql:host=localhost;dbname=ecs");
    define("DB_SYSDSN","mysql:host=localhost;dbname=information_schema");
    define("CURRENT_VIEWPATH","v1");    //当前模拟使用的版本文件夹
    define("CURRENT_VIEWPATH_ADMIN","v1Back");   //后台使用版本文件夹

    define("Cache_IP","127.0.0.1");
    define("Cache_Port","11211");       //memcache默认端口


    define("INCLUDE_PATH","MVC/V/v1/include/"); //include文件存放位置
    define("CACHE_PATH","Cache/"); //include文件存放位置



    define("USER_CRYPTKEY","7777777y"); //用户密码，秘钥
    define("USERLOGIN_CRYPTKEY","MarkZhuLogin"); //用户登录密码，秘钥
    define("BACKGROUND_CRYPTKEY","BackGroundLogin");    //后台登录秘钥
    define("USER_LOGINKEY","user_login");                   // 便于用户管理
    define("BACKGROUND_LOGINKEY","background_login");       // 便于后台管理
    define("USER_LOGINDOMAIN","localhost");     //指定cookie能使用的范围



