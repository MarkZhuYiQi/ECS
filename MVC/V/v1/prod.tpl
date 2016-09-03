我是商品页面
<div style="color:red;font-weight:bold;">

    {username}
    {usersex}

    {foreach:users name="user"}
        用户名：{user.user_name} {username} <br />
    {/foreach}
    {foreach:users name="user"}
        密码：{user.user_pass} {username}
    {/foreach}
</div>