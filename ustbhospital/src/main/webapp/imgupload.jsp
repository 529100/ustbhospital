<%--
  Created by IntelliJ IDEA.
  User: 许剑源
  Date: 2024/7/9
  Time: 下午2:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/doc/add" method="post" enctype="multipart/form-data">
    医生姓名:<input type="text" name="docname"><br>
    医生头像:<input type="file" name="docavatar"><br>
    <input type="submit" value="保存">
</form>
</body>
</html>
