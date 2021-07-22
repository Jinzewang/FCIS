<%--
  Created by IntelliJ IDEA.
  User: king
  Date: 2021/7/17
  Time: 17:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>总工会登录页面</title>
    <link rel="stylesheet" href="../../static/css/regester.css">
</head>
<body>
<!--<div class="header">-->
<!--<div class="w">-->
<!--<div class="guan">管理</div>-->
<!--<div class="regester">-->
<!--<a href="regester.html" target="_blank">登录</a>-->
<!--<p>|</p>-->
<!--<a href="#">注册</a>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->
<!--登录的制作-->
<div class="rbox">
    <h1>总工会</h1>
    <form action="/checkLogin" method="post">
        <div class="acun">
            <span>用户名：</span><input type="text"  name="username" class="account">
        </div>
        <br>
        <div class="pass">
            <span>密&nbsp;&nbsp;&nbsp;码：</span><input type="password" name="password" class="passwd">
        </div><br>
        <input type="submit"  class="denglu" value="登录">&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="/updatePasswd">修改密码</a>
    </form>
</div>
</body>
</html>
