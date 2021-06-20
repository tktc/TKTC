<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/10/6/0006
  Time: 13:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>--%>
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset-utf-8" />
    <title></title>

    <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css"

          rel="stylesheet">

    <style>

        #main-nav {

            margin-left: 1px;
        }

        #main-nav.nav-tabs.nav-stacked > li > a {

            padding: 10px 8px;

            font-size: 12px;

            font-weight: 600;

            color: #4A515B;

            background: #E9E9E9;

            background: -moz-linear-gradient(top, #FAFAFA 0%, #E9E9E9 100%) ;

            background:-webkit-gradient(linear,left top,left bottom, color-stop(0%, #FAFAFA), color-stop(100%, #E9E9E9)) ;

            background:-webkit-linear-gradient(top, #FAFAFA 0%,#E9E9E9 100%) ;

            background: -o-linear-gradient(top,#FAFAFA 0%,#E9E9E9 100%);

            background:-ms-linear-gradient(top, #FAFAFA 0%,#E9E9E9 100%);

            backqround:linear-gradient(top, #FAFAFA 0%, #E9E9E9 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#FAFAFA',endColorstr='#E9E9E9');
            -ms-filter:"progid:DXImageTransform.Microsoft.gradient(startColorstr='#FAFAFA',endColorstr='#E9E9E9')";

            border: 1px solid #D5D5D5;
            border-radius: 4px;
        }

        #main-nav.nav-tabs.nav-stacked > li > a > span {
            color: #4A515B;
        }

        #main-nav.nav-tabs.nav-stacked > li.active > a, #main-nav.nav-tabs.nav-stacked > li > a:hover {
            color: #FFF;
            background: #3C4049;
            background: -moz-linear-gradient(top, #4A515B 0%, #3C4049 100%);
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #4A515B), color-stop(100%, #3C4049));
            background: -webkit-linear-gradient(top, #4A515B 0%, #3C4049 100%);
            background: -o-linear-gradient(top, #4A515B 0%, #3C4049 100%);
            background: -ms-linear-gradient(top, #4A515B 0%, #3C4049 100%);
            background: linear-gradient(top, #4A515B 0%, #3C4049 100%);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#4A515B',endColorstr='#3C4049');
            -ms-filter: "progid: DXImageTransform.Microsoft.gradient (startColorstr-, #4A515B' endColorstr=' #3C4049') ";
            border-color: #2B2E33;
        }

        #main-nav.nav-tabs.nav-stacked > li.active > a, #main-nav.nav-tabs.nav-stacked > li > a:hover > span {
            color: #FFF;
        }

        #main-nav.nav-tabs.nav-stacked > li {
            imargin-bottom: 4px;
        }

        /*定义二级菜单样式*/
        .secondmenu a {
            font-size:10px;
            color: #4A515B;
            text-align: center;
        }

        .navbar- static-top {
            background-color: #212121;
            margin-bottom: 5px;
        }

        .navbar-brand {
            background:  no-repeat 10px 8px;
            display: inline-block;
            vertical-aliqn: middle;
            padding-left: 50px;
            color: #fff;
        }
    </style>
</head>
<body style="background-color:#dee2e6">

<div class="container-fluid">
    <div class="row">
        <ul class="nav nav-tabs nav-stacked" style="">
            <li class="active">
                <a href="/welcom" target="main">
                    <i class="glyphicon glyphicon-th-large"></i>
                    首页
                </a>
            </li>
            <li>
                <a href="" class="nav-header collapsed" data-toggle="collapsed">
                    <i class="glyphicon glyphicon-cog"></i>
                    学生管理
                    <span class="pull-right glyphicon glyphicon-chevron-down"></span>
                </a>
                <ul id = "systemSetting" class="nav nav-list collapse secondmenu" style="height: 0px;">
                    <li>
                        <a href="student/list" target="main">
                            <i class="glyphicon glyphicon-user"></i>
                            学生信息
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="course/list" target="main">
                    <i class="glyphicon glyphicon-credit-card"></i>
                    课程管理
                </a>
            </li>
            <li>
                <a href="teacher/list" target="main">
                    <i class="glyphicon glyphicon-globe"></i>
                    教师管理
                    <span class="label label-warning pull-right"></span>
                </a>
            </li>
            <li>
                <a href="score/list" target="main">
                    <i class="glyphicon glyphicon-calendar"></i>
                    分数管理
                </a>
            </li>
        </ul>
    </div>
</div>
<li>
    <a href="#system" class="nav-header collapsed" data-toggle="collapse">
        <i class="glyphicon glyphicon-fire"></i>
        管理员管理
        <span class="pull-right glyphicon glyphicon-chevron-down">
      </span>
    </a>
    <ul id="system" class="nav nav-list collapse secondmenu" style="height: 0px;">
        <li><a href="admin/list" target="main"><i class="glyphicon glyphicon-user"></i>管理员信息</a></li>
        <li><a href="Admin!add.do" target="main"><i class="glyphicon glyphicon-th-list"></і>添加管理员</а></lі>
        <li><a href="admin/updatePassword" target="main"><i class="glyphicon glyphicon-edit"></i>修改密码</a></li>
    </ul>
</li>
</ul>
</div>
<div class="col-md-10">
</div>
</div>
</div>
<!-- jQuery 文件。务必在bootstrap.min.js之前引入 -->

<script src="bootstrap-3.3.7-dist/js/jquery.min.js"></script>

<!-- 最新的Bootstrap核心JavaScript文件 -->

<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script>
</script>
</body>
</html>
