<%--
  Created by IntelliJ IDEA.
  User: liu
  Date: 2021/7/23
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<html>
<head>
    <title>个人中心</title>
    <link rel="stylesheet" href="/static/css/personal_center.css">
</head>
<body>
<meta name=”viewport” content=”width=device-width, initial-scale=1″/>
<%--    头部制作--%>
<div class="header">
    <div class="hea">ZGH</div>
    <div><p>总工会先进个人和先进集体</p><br>
        <p class="p1">综合信息管理系统</p></div>
</div>
<%--bars部分制作--%>
<div class="bars">
    <div class="bar">
        <div onclick="window.location.href='home_page.jsp'">首页</div>
        <div onclick="window.location.href='Advanced_individual.jsp'" target="_blank">先进个人信息管理</div>
        <div onclick="window.location.href='advanced_group.jsp'">先进集体信息管理</div>
        <div onclick="window.location.href='cognizance_examine.jsp'">认定与审核</div>
        <div onclick="window.location.href='home_page.jsp'">账户管理</div>
    </div>
    <div class="ba">
        <div onclick="window.location.href='logon.jsp'">退出</div>
        <div onclick="window.location.href='logon.jsp'">登录</div>
        <div onclick="window.location.href='personal_center.jsp'">个人中心</div>
    </div>
</div>
<%--个人中心内容--%>
<div class="pcenter">个人中心</div>
<br>
<hr>
<br>
<%--主体部分--%>
<div class="mainb">
    <div><img src="#"></div>
    <br>
    <div class="uname"><span>姓名：</span><input type="text" disabled="disabled"></div>
    <div class="honor"><span>所得荣誉：</span></div>
    <br>
    <div class="worknumber"><span>工号：</span><input type="text" disabled="disabled"></div>
    <br>
    <div class="department"><span>部门：</span><input type="text" disabled="disabled"></div>
    <br>
    <div class="posts"><span>职位：</span><input type="text" disabled="disabled"></div>
    <br>
    <div class="email"><span>电子邮箱：</span><input type="text" disabled="disabled"></div>
    <br>
    <input type="button" class="revise" value="修改资料">
    <input type="button" class="reset" value="重置密码">
</div>
</body>
</html>
