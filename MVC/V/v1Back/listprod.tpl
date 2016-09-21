<table id="tb" class="easyui-datagrid" title="商品列表" style="width:100%;height:95%"
       data-options="singleSelect:  true,
                    collapsible:    true,
                    url:            '/ecs/m_index/getprod/',
                    method:         'get',
                    rownumbers:     true,
                    pagination:     true
">
    <thead>
    <tr>
        <th data-options="field:'prod_name'" width="15%">商品名称</th>
        <th data-options="field:'prod_introduction'" width="18%">文字简介</th>
        <th data-options="field:'prod_price1',align:'right'" width="15%">市场价</th>
        <th data-options="field:'prod_price2',align:'right'" width="15%">优惠价</th>
        <th data-options="field:'prod_ispublic'" width="20%" formatter="isPub">发布状态</th>
        <th data-options="field:'prod_addTime',align:'center'" width="10%">入库时间</th>
        <th data-options="field:'id',align:'center'" width="5%" formatter="showEdit">操作</th>
    </tr>
    </thead>
</table>

<script>

    function showEdit(val,row){
        return '<a href="/?id='+val+'">编辑</a>';
    }
    function isPub(val,row){
        if(val==1){
            return "是";
        }
        return "否";
    }

    $(document).ready(function(){
        $("#tb").datagrid("getPager").pagination({
            pageList:[2,10,20],
            pageSize:10,
            beforePageText:"第",
            afterPageText:"页",
            displayMsg: '当前显示 {from} - {to} 条记录   共 {total} 条记录'
        });
    });
</script>








