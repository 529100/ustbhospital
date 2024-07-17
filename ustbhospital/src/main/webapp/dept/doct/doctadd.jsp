<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>管理员页面</title>
    <link rel="stylesheet" href="/css/pintuer.css">
    <link rel="stylesheet" href="/css/admin.css">
    <script src="/js/jquery-3.7.1.min.js"></script>
    <script src="/js/pintuer.js"></script>
</head>
<script>
    function initDeptlist(){
        $.ajax({
            type: "GET",
            url: "/second/list",

            dataType: "json",
            success: function (res) {
                console.log("res",res)
                //$("#docBody").empty()
                $.each(res, function (i, v) {

                    var optionObj = $("<option value='"+v.department_id+"'>"+v.department_name+"</option>");
                    optionObj.appendTo($("select[name='deptId']"));
                });

            }
        })
    }
    // function initpftlist(){
    //     $.ajax({
    //         type: "GET",
    //         url: "/pft/list",
    //
    //         dataType: "json",
    //         success: function (res) {
    //             console.log("res",res)
    //             //$("#docBody").empty()
    //             $.each(res, function (i, v) {
    //
    //                 var optionObj = $("<option value='"+v.id+"'>"+v.titleName+"</option>");
    //                 optionObj.appendTo($("select[name='pftId']"));
    //             });
    //
    //         }
    //     })
    // }
    $(function (){

        initDeptlist();
        //initpftlist();
    })
</script>
<body>
<div class="panel admin-panel">
    <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>增加内容</strong></div>
    <div class="body-content">
        <form method="post" class="form-x" action="/doct/save"  enctype="multipart/form-data">
            <div class="form-group">
                <div class="label">
                    <label>姓名：</label>
                </div>
                <div class="field">
                    <input type="text" class="input w50" value="" name="name" data-validate="required:请输入姓名" />
                    <div class="tips"></div>
                </div>

            </div>
            <div class="form-group">
            <div class="label">
                <label>手机号：</label>
            </div>
            <div class="field">
                <input type="text" class="input w50" value="" name="phone" data-validate="required:请输入手机号" />
                <div class="tips"></div>
            </div>
            </div>
<%--            <div class="form-group">--%>
<%--                <div class="label">--%>
<%--                    <label>头像：</label>--%>
<%--                </div>--%>
<%--                <div class="field">--%>
<%--&lt;%&ndash;                    <input type="text" id="url1" name="avatar" class="input tips" style="width:25%; float:left;"  value=""  data-toggle="hover" data-place="right" data-image="" />&ndash;%&gt;--%>
<%--                    <input type="file" class="input input-big" name="avatar" id="image1" value="+ 浏览上传"  style="float:left;">--%>
<%--                    <div class="tipss">图片尺寸：500*500</div>--%>
<%--                </div>--%>
<%--            </div>--%>
            <div class="form-group">
                <div class="field field-icon-right">
                    上传照片<input type="file" class="input input-big" name="docavatar" />
                    <span class="icon icon-key margin-small"></span>
                </div>
            </div>
            <if condition="$iscid eq 1">
                <div class="form-group">
                    <div class="label">
                        <label>科室选择：</label>
                    </div>
                    <div class="field">
                        <select name="deptId" class="input w50">
                            <option value="">请选择科室</option>

                        </select>
                        <div class="tips"></div>
                    </div>
                </div>

            </if>

            <if condition="$iscid eq 1">
                <div class="form-group">
                    <div class="label">
                        <label>职称选择：</label>
                    </div>
                    <div class="field">
                        <select name="pftId" class="input w50">
                            <option value="">请选择职称</option>
                            <c:forEach items="${pftlist}" var="pftlist">
                                <option value="${pftlist.id}">${pftlist.titleName}</option>

                            </c:forEach>
                        </select>
                        <div class="tips"></div>
                    </div>
                </div>

            </if>

            <div class="form-group">
                <div class="label">
                    <label>介绍：</label>
                </div>
                <div class="field">
                    <textarea class="input" name="introduction" style=" height:90px;"></textarea>
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

</body></html>