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
        <button class="btn btn-danger myCart"><span class="glyphicon glyphicon-shopping-cart"> </span> 我的购物车 <span class="badge cartNum" id="cartNum">0</span></button>
        <script src="/ecs/prod/initCart/"></script>
    </div>
<?php
    endif;
?>
<script>
    $(document).ready(function(){
        $(".addToCart").click(function(){
            var pid=$(this).attr("pid");
            var oldProd=$(this).parents(".prod");
            var newProd=$(this).parents(".prod").clone();
            newProd.css(
                {
                    position:"fixed",
                    "left":oldProd.offset().left,
                    "top":oldProd.offset().top - $(document).scrollTop()
                }
            );
//            console.log(oldProd.offset());
//            console.log($(document).scrollTop());
            $(oldProd).parent().append(newProd);
            newProd.animate({
                left:$(".cartNum").offset().left,
                top:$(".cartNum").offset().top,
                width:0,
                height:0
            },"slow","",function(){
                newProd.remove();
                addCartNum(pid);
            });
        });
        function addCartNum(pid){
            $.post("/ecs/prod/addToCart/",{
                "pid":pid
            },function(result){
                $(".cartNum").html(result);
            });
        }
    });
</script>
</body>
</html>