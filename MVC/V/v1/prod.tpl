我是商品页面
<div style="color:red;font-weight:bold;">

        {include "abc.html"}
        {include "xyz.html"}



    {green('username')}
    {usersex}
        <br>
    {foreach:users name="user"}
        用户名：{blue('user.user_name')} {green('username')} <br />
    {/foreach}
    {foreach:users name="user"}
        密码：{user.user_pass} {green('username')}<br />
    {/foreach}
</div>