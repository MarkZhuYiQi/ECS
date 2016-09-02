我是商品页面
<div style="color:red;font-weight:bold;">
    <?php
        foreach($users as $user){
            echo $user["user_pass"];
        }
    ?>
</div>