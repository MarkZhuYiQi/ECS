<style>
    .tabs-panels{
        width:100%;
        height:100%;
    }
</style>
<h2>Basic Layout</h2>
<div style="margin:20px 0;"></div>
<div data-options="region:'north'" style="height:50px">
    <h2>background</h2>
</div>
<div data-options="region:'south',split:true" style="height:50px;"></div>
<div data-options="region:'east',split:true" title="East" style="width:100px;"></div>
<div data-options="region:'west',split:true" title="我的工作平台" style="width:200px;">

    <div class="easyui-accordion" data-options="fit:true,border:false">
        <div title="基础信息管理" style="padding:10px;" data-options="selected:true">
            <ul class="easyui-tree">
                <li>
                    <span>商品管理</span>
                    <ul>
                        <li>商品列表</li>
                        <li>新增商品</li>
                    </ul>
                </li>
            </ul>
            <ul class="easyui-tree">
                <li>
                    <span>新闻管理</span>
                    <ul>
                        <li>新闻列表</li>
                        <li>新增新闻</li>
                    </ul>
                </li>
            </ul>
            <ul class="easyui-tree">
                <li>
                    <span>用户管理</span>
                    <ul>
                        <li>用户列表</li>
                        <li>初始化密码</li>
                    </ul>
                </li>
            </ul>

        </div>
        <div title="权限管理" style="padding:10px;">
            权限管理
        </div>
        <div title="系统信息管理" style="padding:10px">
            系统信息管理
        </div>
    </div>
</div>
<div data-options="region:'center',title:'Main Title',iconCls:'icon-ok'">

    <div class="easyui-tabs" style="width:100%;height:100%">
        <div title="About" style="padding:10px">
            <iframe src="/ecs/index/getIndex/" width="100%" height="100%" frameborder="0"></iframe>
        </div>
    </div>

</div>