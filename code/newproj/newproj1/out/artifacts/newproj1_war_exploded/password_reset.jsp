<%--
  Created by IntelliJ IDEA.
  User: liu
  Date: 2021/7/23
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<html>
<head>
    <title>密码重置</title>
    <link rel="stylesheet" href="css/password_reset.css">
    <style>

        /*@media screen and (max-device-width: 400px) {*/
        /*    * {*/
        /*        float: none;*/
        /*    }*/
        /*}*/

        .tips {
            display: none;
        }
    </style>
    <script>
        function judge() {
            if ($(".inputd").val() == $(".isok").val() && $(".inputd").val() != null && $(".isok").val() != null) {
                $(".tips").css("display", "block");
            }
        }

        function changeVisibilityh() {
            $(".tips").css("display", "none");
        }
    </script>
</head>
<body>
<meta name=”viewport” content=”width=device-width, initial-scale=1″/>
<%--头部制作--%>
<div class="header">
    <img src="images/img.jpg">
    <div class="head">
        <div class="headr"><p>总工会先进个人与先进集体</p><br>
            <p class="p1">综合信息管理系统</p>
        </div>
        <div class="hea">ZGH</div>
    </div>
</div>
<%--密码重置制作--%>
<h2>密码重置</h2>
<div class="passw">
    <div>
        <span>姓&nbsp;&nbsp;&nbsp;名:</span><input type="text">
        &nbsp;&nbsp;&nbsp;
        <span>&nbsp;&nbsp;&nbsp;电子邮件:</span><input type="text">
    </div>
    <div>
        <span>工&nbsp;&nbsp;&nbsp;号:</span><input type="text">
        &nbsp;&nbsp;&nbsp;
        <span>输入新密码:</span><input type="password" class="inputd">
    </div>
    <div>
        <span>验证码:</span><input type="text">
        &nbsp;&nbsp;&nbsp;
        <span>确认新密码:</span><input type="password" class="isok">
    </div>
    <input type="button" class="confirm" onclick="judge()" value="确认">
    <input type="button" class="cancel" value="取消">

    <%--    提示--%>
    <div class="tips" style="margin-top: -140px; margin-left: 231px;">
        <span>密码重置成功，请重新登陆</span><br>
        <input type="button" onclick="changeVisibilityh()" value="确认">
    </div>
</div>
<%--底部制作--%>
<div class="foot"></div>
</body>
</html>
