<%--
  Created by IntelliJ IDEA.
  User: liu
  Date: 2021/7/22
  Time: 20:36
  To change this template use File | Settings | File Templates.
  不管
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<!DOCTYPE html>
<html lang="zh-CN">
<html>
<head>
    <title>总工会首页</title>
    <link rel="stylesheet" href="../static/css/home_page.css">
</head>
<body>
<meta name=”viewport” content=”width=device-width, initial-scale=1″/>
<%--    头部制作--%>
<div class="header">
    <img src="../static/img/logo.jpg">
    <div><p>总工会先进个人和先进集体</p><br>
        <p class="p1">综合信息管理系统</p></div>
</div>
<%--bars部分制作--%>
<div class="bars">
    <div class="bar">
        <div style="margin-left: 80px" onclick="window.location.href='/jsp/home_page.jsp'">首页</div>
        <div onclick="window.location.href='/selectModelWorkerDetails'" target="_blank">先进个人信息管理</div>
        <div onclick="window.location.href='/selectAdvance'">先进集体信息管理</div>
        <div onclick="window.location.href='cognizance_examine.jsp'">认定与审核</div>
        <div onclick="window.location.href='statistics.jsp'">信息统计</div>
        <div onclick="window.location.href='import_export.jsp'">导入导出</div>
    </div>
    <div class="ba">
        <div onclick="window.location.href='logon.jsp'">退出</div>
        <div onclick="window.location.href='logon.jsp'">登录</div>
        <div onclick="window.location.href='/selectUserAdmin'">个人中心</div>
    </div>
</div>
<%--荣誉榜单制作--%>
<div class="pcenter">荣誉榜单</div>
<br>
<hr>
</body>
</html>
