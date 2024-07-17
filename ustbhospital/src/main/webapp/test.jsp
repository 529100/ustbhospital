<%--
  Created by IntelliJ IDEA.
  User: 许剑源
  Date: 2024/7/8
  Time: 下午2:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>


<h2>我的第一段 JavaScript</h2>
<head>
    <title>666</title>
    <script src="js/jquery-3.7.1.min.js"></script>
<%--    <script type="text/javascript">--%>
<%--        $(document).ready(function(){--%>
<%--            $("p").click(function(){--%>
<%--                $(this).hide();--%>
<%--            });--%>
<%--        });--%>
<%--    </script>--%>
    <script type="text/javascript">
        $(function(){
            $('button').click(function (){
                alert(('a').attr('href'))
            })
        })
        // $(document).ready(function(){
        //     $("input").focus(function(){
        //         $("input").css("background-color","#FFFFCC");
        //     });
        //     $("input").blur(function(){
        //         $("input").css("background-color","#D6D6FF");
        //     });
        // });

        // $(document).ready(function(){
        //     $("button").toggle(function(){
        //             $("body").css("background-color","green");},
        //         function(){
        //             $("body").css("background-color","red");},
        //         function(){
        //             $("body").css("background-color","yellow");}
        //     );
        // });
    </script>
    <style>
        s1{
            color: red;
        }
        p{
            color: blueviolet;
        }
    </style>
</head>

<body>
<a href="http://www.baidu.com">baidu</a><br>
<button>请点击这里，来切换不同的背景颜色</button><br>
Enter your name: <input type="text" /><br>
<p>请在上面的输入域中点击，使其获得焦点，然后在输入域外面点击，使其失去焦点。</p>
<script>
    function f1(){
        document.getElementsByClassName("r").css.color="blue"
    }
</script>
</body>
<%--<body>--%>
<%--<p>If you click on me, I will disappear.</p>--%>
<%--</body>--%>

<%--<button onclick="f1()" id="btn1" >--%>
<%--    <span id="s1">点</span>--%>

<%--</button>--%>
<%--<p id="p1">弹</p>--%>

<%--<script>--%>
<%--    function f1(){--%>
<%--        $("#p1").html()--%>
<%--    }--%>
<%--</script>--%>


<%--<p id="demo"></p>--%>

<%--</body>--%>
</html>
