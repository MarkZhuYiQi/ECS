<div class="container">
    <div class="col-md-3">
        {include "abc.html"}
        {include "xyz.html"}
    </div>
    <div class="col-md-9">
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

</div>