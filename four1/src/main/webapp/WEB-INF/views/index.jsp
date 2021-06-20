<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/11/2/0002
  Time: 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <meta http-equiv="Content-Type "content="text/css";charaset="UTF-8"/>
    <title>international</title>
</head>
<body>
<div class="login">
    <h1><spring:message code="title"></spring:message></h1>
    <form action="test.do" method="post">
        <input type="text" name="name" placeholder=<spring:message code="username"/> required="required" value=""/>
    </form>
</div>
</body>
</html>
