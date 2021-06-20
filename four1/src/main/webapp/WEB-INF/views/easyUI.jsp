<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" type="text/css" href="EasyUI/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="EasyUI/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="EasyUI/demo.css">
    <script type="text/javascript" src="EasyUI/jquery.min.js"></script>
    <script type="text/javascript" src="EasyUI/jquery.easyui.min.js"></script>
</head>
<body>
    <ul class="easyui-tree">
        <li>
            <span>Folder</span>
            <ul>
                <li>
                    <span>Sub Folder1</span>
                    <ul>
                        <li>File1</li>
                        <li>File2</li>
                    </ul>
                    <span>File3</span>
                    <span>File4</span>
                </li>
            </ul>
        </li>
    </ul>
</div>

<%--
<div class="easyui-tabs" style="width:700px;height:300">
    <div title="首页" style="padding:10px">
        <p style="font-size:14px">jQuery EasyUI framework help you build your web page easily.</p>
        <ul>
            <li>hello welcome</li>
        </ul>
    </div>
    <div title="系统管理" style="padding:10px" data-options="closable:true">
        <ul>
            <li>系统管理</li>
        </ul>
    </div>
</div>

<table class="easyui-datagrid" title="Basic DataGrid" style="width:700px;height:250px"
       data-options="singleSelect:true,collapsible:true,url:'datagrid_data1.json',method:'get'">
    <thead>
    <tr>
        <th data-options="field:'itemid',width:80">Item ID</th>
        <th data-options="field:'productid',width:100">Product</th>
        <th data-options="field:'listprice',width:80,align:'right'">List Price</th>
        <th data-options="field:'unitcost',width:80,align:'right'">Unit Cost</th>
        <th data-options="field:'attr1',width:250">Attribute</th>
        <th data-options="field:'status',width:60,align:'center'">Status</th>
    </tr>
    </thead>
</table>
--%>

<div style="padding:10px 0 0 30px">
    <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-ok'">Ok</a>
</div>
<div id="dlg" class="easyui-dialog" title="Basic Dialog" style="width:400px;height:200px;padding:10px" 	data-options="
				iconCls: 'icon-save',
				toolbar: [{
					text:'Add',
					iconCls:'icon-add',
					handler:function(){
						alert('add')
					}
				}],
				buttons: [{
					text:'Ok',
					iconCls:'icon-ok',
					handler:function(){
						alert('ok');
					}
				}]
			" >
    The dialog content.
</div>
</body>
</html>