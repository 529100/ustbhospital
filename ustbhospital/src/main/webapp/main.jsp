<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<html>
<head>
    <title>Title</title>
</head>

<div class="box"><ul class="list3">
<ul class="list4">
    <li>
        <a href="dept/annc/annc1.jsp" class="a">
            <h5 class="overfloat-dot">${list.get(0).title}</h5>
            <span>${list.get(0).creationTime}</span>
        </a>
    </li>
    <li>
        <a href="dept/annc/annc2.jsp" class="a">
            <h5 class="overfloat-dot">${list.get(1).title}</h5>
            <span>${list.get(1).creationTime}</span>
        </a>
    </li>
    <li>
        <a href="dept/annc/annc3.jsp" class="a">
            <h5 class="overfloat-dot">${list.get(2).title}</h5>
            <span>${list.get(2).creationTime}</span>
        </a>
    </li>
</ul>
    </ul>
</div>
</html>
