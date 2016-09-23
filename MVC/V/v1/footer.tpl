<?php
    if(!$hideBottom):
?>
<style>
    #footer{
        background:#fff none repeat scroll 0 0;
        border-top:1px solid #ddd;
        padding:15px 0;
        text-align:center;
    }
    .myCart{
        position:fixed;
        right:10px;
        bottom:10px;
    }
</style>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div id="footer">
                    <div class="footerNav">
                        <a href="#">关于我们</a> | <a href="#">服务条款</a> | <a href="#">免责声明</a> | <a href="#">网站地图</a> | <a href="#">联系我们</a>
                    </div>
                    <div class="copyRight">
                        Copyright ©2010-2014 我的个人站点 版权所有
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <button class="btn btn-danger myCart"><span class="glyphicon glyphicon-shopping-cart"> </span> 我的购物车 <span class="badge">1</span></button>
    </div>
<?php
    endif;
?>
</body>
</html>