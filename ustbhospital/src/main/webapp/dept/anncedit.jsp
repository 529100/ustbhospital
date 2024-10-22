<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>


<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>修改公告</title>
    <link rel="stylesheet" href="../css/pintuer.css">
    <link rel="stylesheet" href="../css/admin.css">
    <script src="../js/jquery-3.7.1.min.js"></script>
    <script src="../js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel margin-top">
    <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>修改公告</strong></div>
    <div class="body-content">
        <form method="post" class="form-x" action="/anncEdit">
            <%--            <隐藏域--%>
            <input type="hidden" name="announcementId" value="${announcement.announcementId}">
            <div class="form-group">
                <div class="label">
                    <label>公告标题：</label>
                </div>
                <div class="form-group">
                    <div class="field field-icon-right">
                        <input type="text" class="input input-big" name="title" value="${announcement.title}"/><br>
                        <%--                        <span class="icon icon-user margin-small"></span>--%>
                    </div>
                </div>
            </div>

                <div class="form-group">
                    <div class="label">
                        <label>内容：</label>
                    </div>
                    <div class="field">
                        <textarea name="content" rows="10" cols="40">
                            ${announcement.content}
                        </textarea></p>
                    </div>
                </div>
            <div class="form-group">
                <div class="label">
                    <label></label>
                </div>
                <div class="field">

                    <%--                    <input type="submit" class="button bg-main icon-check-square-o" > 提交--%>
                    <input type="submit" class="button bg-main icon-check-square-o" value="提交">
                </div>
            </div>

        </form>
    </div>
</div>
</body>
</html>
