<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.lang.*" %>
<html>
<head>
    <title>show info</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    out.println(id);
    String name = request.getParameter("name");
    out.println(name);
    String favorite = request.getParameter("favorite");
    out.println(favorite);
    String sex = request.getParameter("sex");
    out.println(sex);
%>
</body>
</html>