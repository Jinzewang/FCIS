<%--
  Created by IntelliJ IDEA.
  User: liu
  Date: 2021/7/23
  Time: 21:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<html>
<head>
    <title>登录</title>
    <link rel="stylesheet" href="css/logon.css">
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
<%--登录制作--%>
<div class="logon">
    <div class="uname"><span>用户名:</span><input type="text"></div>
    <br>
    <div class="passd"><span>密&nbsp;&nbsp;&nbsp;码:</span><input type="text">
        <span class="wpassd" onclick="window.location.href='password_reset.jsp'">忘记密码</span></div>
    <br>
    <input type="button" class="blogon" value="登录">
</div>
<%--底部制作--%>
<div class="foot"></div>
</body>
</html>
