<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta property="qc:admins" content="2642646666641160167637571645060454" />
    <title>ECS</title>
    <link rel="stylesheet" href="css/showDialog.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<?php
    if(!$hideTop):
?>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/showDialog.js"></script>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <nav class="navbar navbar-default" role="navigation">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">切换导航</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button> <a class="navbar-brand" href="#">导航</a>
                    </div>

                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="active">
                                <a href="#">链接</a>
                            </li>
                            <li>
                                <a href="#">链接</a>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">下拉菜单<strong class="caret"></strong></a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="#">列表一</a>
                                    </li>
                                    <li>
                                        <a href="#">列表二</a>
                                    </li>
                                    <li>
                                        <a href="#">列表三</a>
                                    </li>
                                    <li class="divider">
                                    </li>
                                    <li>
                                        <a href="#">更多列表</a>
                                    </li>
                                    <li class="divider">
                                    </li>
                                    <li>
                                        <a href="#">更多列表</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <form class="navbar-form navbar-left" role="search">
                            <div class="form-group">
                                <input type="text" class="form-control" />
                            </div> <button type="submit" class="btn btn-default">搜索</button>
                        </form>
                        <ul class="nav navbar-nav navbar-right">
                            <?php
                                $getUser=the_user();
                            ?>
                            <?php if($getUser): ?>

                            <li>
                                欢迎你：<?php echo $getUser->user_name; ?>
                            </li>
                            <li>
                                <a href="#">安全退出</a>
                            </li>

                            <?php else: ?>

                            <li>
                                <a href="#" onclick="showWindow('会员登录','member/login/',500)">登录</a>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">注册</a>
                            </li>

                            <?php endif; ?>

                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </div>
<?php
    endif;
?>