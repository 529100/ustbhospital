<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>医生列表</title>
    <link rel="stylesheet" href="../css/pintuer.css">
    <link rel="stylesheet" href="../css/admin.css">
    <script src="../js/jquery-3.7.1.min.js"></script>
    <script src="/js/pintuer.js"></script>
</head>
<body>
<div class="padding border-bottom">
    <ul class="search" style="padding-left:10px;">
        <li> <a class="button border-main icon-plus-square-o" href="#"> 添加医生</a > </li>
        <li>搜索：</li>
        <li>科室
            <select name="department_id" class="input" onchange="changesearch()"  style="width:60px; line-height:17px;display:inline-block">
                <option value="">选择</option>
                <option value="1">内科</option>
                <option value="2">副主任医师</option>
                <option value="3">主治医师</option>
                <option value="4">住院医师</option>
                <option value="5">实习医师</option>
                <option value="6">医士</option>
            </select>
<%--            <select name="pid" class="input" onchange="changesearch()" style="width:60px; line-height:17px; display:inline-block">--%>
<%--                <c:forEach items="${list}" var="dept">--%>
<%--                    <option value="${dept.department_id}">${dept.department_name}</option>--%>

<%--                </c:forEach>--%>
<%--            </select>--%>
            &nbsp;&nbsp; &nbsp;&nbsp;
            职称
            <select name="professional_title_id" class="input" onchange="changesearch()"  style="width:60px; line-height:17px;display:inline-block">
                <option value="">选择</option>
                <option value="1">主任医师</option>
                <option value="2">副主任医师</option>
                <option value="3">主治医师</option>
                <option value="4">住院医师</option>
                <option value="5">实习医师</option>
                <option value="6">医士</option>
            </select>
            &nbsp;&nbsp;
        </li>
        <if condition="$iscid eq 1">
            <li>
                <select name="cid" class="input" style="width:200px; line-height:17px;" onchange="changesearch()">
                    <option value="">请选择分类</option>
                    <option value="">产品分类</option>
                    <option value="">产品分类</option>
                    <option value="">产品分类</option>
                    <option value="">产品分类</option>
                </select>
            </li>
        </if>
        <li>
            <input type="text" placeholder="请输入搜索关键字" name="keywords" class="input" style="width:250px; line-height:17px;display:inline-block" />
            <a href="javascript:void(0)" class="button border-main icon-search" onclick="changesearch()" > 搜索</a></li>
    </ul>
</div>
    <table class="table table-hover text-center">
        <tr>
            <td>编号</td>
            <td>工号</td>
            <td>密码</td>
            <td>姓名</td>
            <td>证件照</td>
            <td>手机号</td>
            <td>邮箱</td>
            <td>介绍</td>
            <td>挂号费</td>
            <td>操作</td>
        </tr>
        <c:forEach items ="${pageInfo.list}" var="doct" varStatus="vs">

            <tr>
                <td>${vs.index+1}</td>
                <td>${doct.jobNumber}</td>
                <td>${doct.password}</td>
                <td>${doct.name}</td>
<%--                <td>${doct.avatar}</td>--%>
                <td width="10%"><img src="${doct.avatar}" alt="" width="70" height="50" /></td>
                <td>${doct.phone}</td>
                <td>${doct.email}</td>
                <td>${doct.introduction}</td>
                <td>${doct.registrationFee}</td>
                <td><div class="button-group"> <a class="button border-main" href="add.html"><span class="icon-edit"></span> 修改</a> <a class="button border-red" href="javascript:void(0)" onclick="return del(1,1,1)"><span class="icon-trash-o"></span> 删除</a> </div></td>
            </tr>

        </c:forEach>
        <tr>
            <td colspan="8">
                <div class="pagelist">
                    <c:if test="${pageInfo.isFirstPage}">
                        <a href="JavaScript:alert('已经是第一页')">上一页</a>
                    </c:if>
                    <c:if test="${not pageInfo.isFirstPage}">
                        <a href="/list1?pageNum=${pageInfo.prePage}">上一页</a>
                    </c:if>
                    <c:forEach items="${pageInfo.navigatepageNums}" var="i">
                        <a href = "/list1?pageNum=${i}">${i}</a>
                    </c:forEach>
                    <c:if test="${pageInfo.isLastPage}">
                        <a href="JavaScript:alert('已经是最后一页')">下一页</a>
                    </c:if>
                    <c:if test="${not pageInfo.isLastPage}">
                        <a href="/list1?pageNum=${pageInfo.nextPage}">下一页</a>
                    </c:if>

                    <a href="/list1?pageNum=${pageInfo.pages}">尾页</a>
                </div>
            </td>
        </tr>
    </table>
</div>
<script type="text/javascript">
    function del(id,mid){
        if(confirm("您确定要删除吗?")){

        }
    }
</script>
<%--
<div class="panel admin-panel margin-top">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>添加内容</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="">
      <div class="form-group">
        <div class="label">
          <label>上级分类：</label>
        </div>
        <div class="field">
          <select name="pid" class="input w50">
            <option value="">请选择分类</option>
            <option value="">产品分类</option>
            <option value="">产品分类</option>
            <option value="">产品分类</option>
            <option value="">产品分类</option>
          </select>
          <div class="tips">不选择上级分类默认为一级分类</div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>分类标题：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="title" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>批量添加：</label>
        </div>
        <div class="field">
          <textarea type="text" class="input w50" name="tits" style="height:150px;" placeholder="多个分类标题请转行"></textarea>
          <div class="tips">多个分类标题请转行</div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>关键字标题：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="s_title" />
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>分类关键字：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="s_keywords" />
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>关键字描述：</label>
        </div>
        <div class="field">
          <input type="text" class="input" name="s_desc"/>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>排序：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="sort" value="0"  data-validate="number:排序必须为数字" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
        </div>
      </div>
    </form>
  </div>
</div>
--%>
</body>
</html>