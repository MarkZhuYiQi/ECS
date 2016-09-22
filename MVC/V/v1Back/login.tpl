<div class="easyui-panel" title="login" style="width:100%;height:100%">
    <div style="padding:10px 60px 20px 60px">
        <form id="m_login" method="post">
            <table cellpadding="5" style="text-align:center;margin:10% auto 0 auto;">
                <tr>
                    <td>User Name:</td>
                    <td><input class="easyui-textbox" type="text" name="userName" id="userName" data-options="required:true" /></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input class="easyui-textbox" type="password" name="password" id="password" data-options="required:true,validType:'password'" /></td>
                </tr>
                <tr>
                    <td>Remember Me:</td>
                    <td><input class="easyui-checkbox" type="checkbox" name="remember" id="remember" data-options="required:true" /></td>
                </tr>
            </table>
        </form>
        <div style="text-align:center;padding:5px;">
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">Submit</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">Clear</a>
        </div>
    </div>
</div>
<script>
    function submitForm(){
        var remember=0;
        $('#m_login').submit(
            function(e){
                e.preventDefault();
            }
        );
        if($("#remember").prop("checked")){
            remember=1;
        }
        $.post(
            "/ecs/member/m_login_action/",
            {
                "userName":$('#userName').val(),
                "password":$('#password').val(),
                "remember":remember
            },
            function(result){
                if(result==1){
//                    self.location.reload();
                    window.location.href="/ecs/m_index/index/";
                }else if(result==0){
                    alert("login failed!");
                }
            }
        );
    }
    function clearForm(){
        $('#m_login').form('clear');
    }
    $(document).keydown(function(e){
        if(e.keyCode=="13"){
            submitForm();
        }
    });
</script>