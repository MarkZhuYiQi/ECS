<script>
    function login(){
        $(".form-horizontal").submit(false);
        $.post(
                "member/login_action/",
                {
                    "userName":$("#inputUserName").val(),
                    "userPass":$("#inputPass").val()
                },
                function(result){
                    alert(result);
        });
    }
</script>

<div class="container col-md-12">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <form class="form-horizontal" role="form">
                <div class="form-group">
                    <label for="inputUserName" class="col-sm-3 control-label">账号：</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="inputUserName" placeholder="请输入您的账号" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPass" class="col-sm-3 control-label">密码：</label>
                    <div class="col-sm-9">
                        <input type="password" class="form-control" id="inputPass" placeholder="请输入您的密码" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-9">
                        <div class="checkbox">
                            <label><input type="checkbox" /> 记住我</label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-info" onclick="login()">登录</button>
                        <button type="submit" class="btn btn-default" onclick="self.parent.sd_remove();">关闭</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>