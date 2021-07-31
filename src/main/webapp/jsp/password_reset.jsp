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
    <link rel="stylesheet" href="../static/css/password_reset.css">
    <style>

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
    <div class="head">
        <div class="headr"><p>总工会先进个人与先进集体</p><br>
            <p class="p1">综合信息管理系统</p>
        </div>
        <img src="/static/img/logo.jpg" class="rimg">
        <div class="yin">
            <p>Advanced individual and collective integrated information management</p><br>
            <p class="rbimg"> system of the Federation of trade unions</p>
        </div>
    </div>
</div>
<%--密码重置制作--%>
<h2>密码重置</h2>
<form action="/updatePasswd" method="post">
    <div class="passw">
        <div class="pass">
            <span>输入新密码:</span><input name="newPassWord" type="password" class="inputd">
            <span>确认新密码:</span><input name="newPassWord1" type="password" class="isok">
        </div>
        <input type="button" class="confirm" onclick="judge()" value="确认">
        <input type="button" class="cancel" onclick="window.location.href='logon.jsp'" value="取消">

        <%--    提示--%>
        <div class="tips" style="margin-top: -140px; margin-left: 231px;">
            <span>密码重置成功，请重新登陆</span><br>
            <input type="submit" onclick="changeVisibilityh();window.location.href='logon.jsp'" value="确认">
        </div>
    </div>
</form>
<%--底部制作--%>
<div class="foot"></div>
</body>
</html>
