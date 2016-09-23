<style>
    a:hover{
        text-decoration: none;
        transition:all 0.3s ease;
    }

    .price{
        color:#e4393c;
    }
    .btn:hover{
        background-color:#d9534f;
        border-color: #d43f3a;
        color: #fff;
        outline:none;
    }
    .btn{
        background-color:#fff;
        border-color: #d43f3a;
        color:#d9534f;
        outline:none;
    }
    .prod_title{
        color:#333;
        text-decoration: none;
    }
    .prod_title:hover{
        color:orangered;
    }
</style>

<script>
    $(document).ready(function(){
//        $(".prodImg").popover({
//            trigger:"hover",
//            title:"JavaScript圣经",
//            content:"JavaScript圣经JavaScript圣经JavaScript圣经JavaScript圣经JavaScript圣经JavaScript圣经"
//        });
//        $(".prodImg").popover();

        /**
         * showDialog插件使用
         */
//        showInfo("HELLO");
//        showWindow("message reminder","index/getProd/",500);
    });
</script>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="row clearfix">
                <div class="col-md-9 column">
                    <ul class="breadcrumb">         <!--面包屑导航-->
                        <li>
                            <a href="#">首页</a>
                        </li>
                        <li class="active">
                            <a href="#">计算机类图书</a>
                        </li>

                    </ul>
                    <div class="row">               <!--商品列表-->
                        {foreach:prodList name="prodList"}
                        <div class="col-md-4 prod">
                            <div class="thumbnail">
                                <a href="/ecs/prod/detail/?pid={prodList.id}">
                                    <img class="prodImg" data-placement="top" data-toggle="popover" data-trigger="click" title="{prodList.prod_name}" data-content="{prodList.prod_name}" alt="300x200" src="{prodList.prod_thumbnail}" />
                                </a>
                                <div class="caption">
                                    <h4>
                                        <a class="prod_title" href="/ecs/prod/detail/?pid={prodList.id}">{prodList.prod_name}</a>
                                    </h4>
                                    <p>
                                        {prodList.prod_introduction}
                                        <span class="price">￥{prodList.prod_price1}</span>
                                    </p>
                                    <p>
                                        <a href="#" class="btn">加入购物车</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        {/foreach}
                    </div>
                    <ul class="pagination">
                        <li>
                            <a href="#">上一页</a>
                        </li>
                        <li>
                            <a href="#">1</a>
                        </li>
                        <li>
                            <a href="#">2</a>
                        </li>
                        <li>
                            <a href="#">3</a>
                        </li>
                        <li>
                            <a href="#">4</a>
                        </li>
                        <li>
                            <a href="#">5</a>
                        </li>
                        <li>
                            <a href="#">下一页</a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-3 column">
                    <div class="list-group">
                        <a href="#" class="list-group-item active">首页</a>
                        <div class="list-group-item">
                            列表头部
                        </div>
                        <div class="list-group-item">
                            <h4 class="list-group-item-heading">
                                列表内容
                            </h4>
                            <p class="list-group-item-text">
                                ...
                            </p>
                        </div>
                        <div class="list-group-item">
                            <span class="badge">14</span>产品展示
                        </div> <a class="list-group-item active"><span class="badge">14</span>案例展示</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>