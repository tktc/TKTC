<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <link href="${pageContext.request.contextPath}bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="${pageContext.request.contextPath}bootstrap-3.3.7-dist/js/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="${pageContext.request.contextPath}bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <base href="<%=basePath%>">

    <title>登录</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
<link rel="stylesheet" type="text/css" href="styles.css">
-->

</head>
<script type="text/javascript">
    function check_login() {
        var username = document.getElementById("username");
        var password = document.getElementById("password");
        var type = document.getElementById("type");
        if(type.value == "-1"){
            window.alert("请选择登录身份，不得为空!");
            return false;
        }else{
            if (username.value == "" || password.value == "") {
                window.alert("登录ID、登录密码都不能为空！");
                return false;
            }
            return true;
        }

    }
</script>
<body >
<form class="form-horizontal" role="form" action="/check.do" method="post">
    <div class="form-group" align="center">
        <div class="form-group" align="center">
            <label  class="col-sm-6 control-label" style="font-size: 28px; color:black; font-family: 华文楷体;" >学生管理系统登陆界面</label>
        </div>
    </div>
    <div class="form-group">
        <label for="username" class="col-sm-2 control-label" style=" color:black;">名字</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" name="username" id="username" placeholder="请输入名字">
        </div>
    </div>
    <div class="form-group">
        <label for="password" class="col-sm-2 control-label" style=" color:black;">密码</label>
        <div class="col-sm-6">
            <input type="password" class="form-control" name="password" id="password" placeholder="请输入密码">
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <div class="checkbox">
                <td class="s2">
                    <label style=" color:black;">
                        登录身份:
                    </label>

                </td>
                <td>
                    <select id="type" name="type">
                        <option value="-1">
                            --请选择--
                        </option>
                        <option value="0">
                            学生
                        </option>
                        <option value="1">
                            教师
                        </option>
                        <option value="2">
                            管理员
                        </option>
                    </select>
                </td>
                <td height="37" colspan="2" align="right">
                    &nbsp;<button type="submit" id="submit" name="submit" value="登陆">登陆</button>
                    &nbsp;<button type="reset" id="reset" name="reset" style="background-color:transparent;border: 0;" ></button>
                </td>
            </div>
        </div>
    </div>
</form>
</body>
</html>