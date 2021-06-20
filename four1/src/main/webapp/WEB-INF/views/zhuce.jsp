<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/10/13/0013
  Time: 17:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Basic RadioButton - jQuery EasyUI Demo</title>
    <link rel="stylesheet" type="text/css" href="EasyUI/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="EasyUI/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="EasyUI/demo.css">
    <script type="text/javascript" src="EasyUI/jquery.min.js"></script>
    <script type="text/javascript" src="EasyUI/jquery.easyui.min.js"></script>
    <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="bootstrap-3.3.7-dist/css/bootstrap-datetimepicker.css" rel="stylesheet" media="screen">
</head>
<body>
<%--<form id="ff">
    <div style="margin-bottom:20px">
        <input class="easyui-radiobutton" name="fruit" value="A" label="A:">
    </div>
    <div style="margin-bottom:20px">
        <input class="easyui-radiobutton" name="fruit" value="B" label="B:">
    </div>
    <div style="margin-bottom:20px">
        <input class="easyui-radiobutton" name="fruit" value="C" label="C:">
    </div>
    <div style="margin-bottom:20px">
        <input class="easyui-radiobutton" name="fruit" value="D" label="D:">
    </div>
</form>--%>
<<%--table border="1px">&lt;%&ndash;th是表头，td是单个单元格&ndash;%&gt;

    <form action="easy.jsp">
        <tr><th >id </th><td><input name="id" class="itxt" type="text" placeholder="请输入id" autocomplete="off" tabindex="1"  /></td></tr>
        <tr><th >name </th><td><input name="name" class="itxt" type="text" placeholder="请输入名字" autocomplete="off" tabindex="1"  /></td></tr>
        <tr><th >favorite </th><td><input name="favorite" class="itxt" type="text" placeholder="请输入爱好" autocomplete="off" tabindex="1"  /></td></tr>
        <tr><th >sex </th><td><input name="sex" class="itxt" type="text" placeholder="请输入性别" autocomplete="off" tabindex="1"  /></td></tr>
        <td><input type="submit" value="创建" id="sub_btn" /></td>
    </form>
</table>--%>
<form action="" class="form-horizontal"  role="form">
    <fieldset>
        <legend>register</legend>
        <div class="form-group">
            <label for="dtp_input2" class="col-md-2 control-label">birthday</label>
            <div class="input-group date form_date col-md-5" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                <input class="form-control" size="16" type="text" value="" readonly>
                <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
            </div>
            <input type="hidden" id="dtp_input2" value="" /><br/>
        </div>
    </fieldset>
</form>
</div>

<script type="text/javascript" src="bootstrap-3.3.7-dist/js/jquery.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
<script type="text/javascript">
    $('.form_datetime').datetimepicker({
        //language:  'fr',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1
    });
    $('.form_date').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        minView: 2,
        forceParse: 0
    });
    $('.form_time').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 1,
        minView: 0,
        maxView: 1,
        forceParse: 0
    });
</script>
</body>
</html>
