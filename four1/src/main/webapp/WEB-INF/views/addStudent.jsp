<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/10/19/0019
  Time: 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<form action="add.do" method="post" class="form-control" enctype="multipart/form-data">
    <input name="name" type="text"><br/>
    <input name="pwd" type="password"><br/>
    <input name="age" type="text"><br/>
    折扣：<input name="discount" type="text"><br/>
    <div class="form-group">
        <label for="file" class="col-sm-2 control-label">头像:</label>
        <div class="col-sm-10">
            <input type="file" class="form-control" id="file" name="file" placeholder="head image">
        </div>
    </div>
    <input value="add Student" type="submit"><br/>
</form>--%>
<%--<form:form action="add.do" method="post" class="form-control" enctype="multipart/form-data">
    <div class="form-group">
        <label for="file" class="col-sm-2 control-label">头像:</label>
        <div class="col-sm-10">
            <input type="file" class="form-control" id="file" name="file" placeholder="head image">
        </div>
    </div>
</form:form>--%>
<form:form action="add.do" method="post" class="form-control" enctype="multipart/form-data">
    密码：<input name="password" class="form-control" type="password" value="${student.password}">
    性别：<input name="sex" class="form-control" type="text" value="${student.sex}">
    班级：<input name="clazz" class="form-control" type="text" value="${student.clazz}">
    生日：<input name="birthday" class="form-control" type="text" value="${student.birthday}">
    <%--<div class="form-group">
        <label for="file1" class="col-sm-2 control-label">头像：</label>
        <div class="col-sm-5">
            <input type="file" class="form-control" id="file1" name="file" placeholder="head image">
        </div>
    </div>
    <br/>--%>
    <input class="col-lg-4" value="add student" type="submit">
</form:form>
</body>
</html>
