<script>
//    $(document).ready(function(){
//        ($("#rememberWeek").click(function(){
//            alert($("#rememberWeek").prop("checked"));
//        }));
//    });
    function login(){

        var rememberWeek=0; //默认不记住登录状态
        if($("#rememberWeek").prop("checked")){
            rememberWeek=1; //记住一周
        }
        $(".form-horizontal").submit(
            function(e){
                e.preventDefault();
            }
        );
        $.post(
                "/ecs/member/login_action/",
                {
                    "userName":$("#inputUserName").val(),
                    "userPass":$("#inputPass").val(),
                    "rememberWeek":rememberWeek
                },
                function(result){
                    if(result=="1"){
//                        alert("登陆成功！");
                        self.location.reload();
                    }else if(result=="0"){
                        alert("登陆失败！账户名或密码不正确！");
                    }else{
                        alert(result);
                    }
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
                            <label><input id="rememberWeek" type="checkbox" /> 一周内免登陆</label>
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