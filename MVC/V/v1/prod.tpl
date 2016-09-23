<style>
    .prod li{
        border:0;
    }
    .page-header{
        margin:0 auto;
        font-size:22px;
        font-weight:bold;
    }
    .price2 span{
        color:darkred;
    }
    .intro{
        border:solid 1px #ddd;
        border-radius:5px;
        background:#eee;
        text-indent:2em;
        line-height:30px;
    }
</style>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-8 column">
            {foreach:proddetail name="prod"}
            <div class="col-md-4">
                <img src="{prod.prod_thumbnail}" alt="">
            </div>
            <div class="col-md-8">
                <ul class="list-group prod">
                    <li class="list-group-item">
                        <p class="page-header">{prod.prod_name}</p>
                    </li>
                    <li class="list-group-item">
                        <span class="glyphicon glyphicon-sound-7-1">市场价：</span><span>￥{prod.prod_price1}</span>
                    </li>
                    <li class="list-group-item price2">
                        <span class="glyphicon glyphicon-cloud-download">优惠价：</span><span>￥{prod.prod_price2}</span>
                    </li>
                    <li class="list-group-item">
                        <p class="intro">{prod.prod_introduction}</p>
                    </li>
                    <li class="list-group-item">
                        <button class="btn btn-danger"><span class="glyphicon glyphicon-user">加入购物车</span></button>
                        <button class="btn btn-info"><span class="glyphicon glyphicon-thumbs-up">点赞</span></button>
                    </li>
                </ul>
                <div class="panel panel-default">
                    <div class="panel panel-heading">
                        <span class="glyphicon glyphicon-circle-arrow-right"> </span> 商品详细内容
                    </div>
                    <div class="panel-body">
                        {prod.prod_content}
                    </div>
                </div>
            </div>
        </div>
        {/foreach}

        <div class="col-md-4 column"></div>

       