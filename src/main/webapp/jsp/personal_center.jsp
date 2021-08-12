<%@ page import="java.util.List" %>
<%@ page import="com.fcis.model.informationManagement.outstandingPersonDeclare.ModelWorker" %>
<%@ page import="com.fcis.model.User" %><%--
  Created by IntelliJ IDEA.
  User: liu
  Date: 2021/7/23
  Time: 16:13
  To change this template use File | Settings | File Templates.
  不传递  只接受
--%>
<%
    //接收两个类数据
    List<User> us = (List<User>) session.getAttribute("users");

%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>个人中心</title>
    <link rel="stylesheet" href="../static/css/personal_center.css">
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
        <div style="margin-left: 80px" onclick="window.location.href='home_page.jsp'">首页</div>
        <div onclick="window.location.href='Advanced_individual.jsp'" target="_blank">先进个人信息管理</div>
        <div onclick="window.location.href='advanced_group.jsp'">先进集体信息管理</div>
        <div onclick="window.location.href='cognizance_examine.jsp'">认定与审核</div>
        <div onclick="window.location.href='statistics.jsp'">信息统计</div>
        <div onclick="window.location.href='import_export.jsp'">导入导出</div>
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
    <div class="mleft">
        <img src="#">
        <span>姓名:</span><input type="text" readonly="readonly" style="margin-right: 150px;margin-top: 50px"
                               value="<%=us.get(0).getUsername()%>>">
        <span>性别:</span><input type="text" readonly="readonly" value="<%=us.get(0).getUser_sex()%>"><br>
        <span>邮箱:</span><input type="text" readonly="readonly" style="margin-right: 150px"
                               value="<%=us.get(0).getEmail()%>">
        <span>电话:</span><input type="text" readonly="readonly" value="<%=us.get(0).getUser_phone()%>"><br>
        <span style="margin-left: 150px">身份账号:</span><input type="text" readonly="readonly"
                                                            value="<%=us.get(0).getIdentifyCard()%>">
    </div>
    <div class="mright">
        <span class="mr1">所得荣誉:</span><textarea style="float: left" cols="25" rows="5" readonly="readonly"></textarea>
        <span class="mr2">所享受待遇:</span><textarea class="mt" cols="25" rows="5" readonly="readonly"></textarea>
    </div>
    <input type="button" class="revise" onclick="window.location.href='modify_data.jsp'" value="修改资料">
    <input type="button" class="reset" value="修改密码">
</div>
</body>
</html>
