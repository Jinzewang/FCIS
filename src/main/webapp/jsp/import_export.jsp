<%--
  Created by IntelliJ IDEA.
  User: liu
  Date: 2021/7/27
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<html>
<head>
    <title>导入导出</title>
    <link rel="stylesheet" href="/static/css/import_export.css">
    <style>
        .import {
            display: none;
        }
    </style>
    <script>
        function changeVisibilityv() {
            //申报按钮的实现
            $(".import").css("display", "block");
        }

        function changeVisibilitym() {
            //申报按钮的实现
            $(".import").css("display", "none");
        }
    </script>
</head>
<body>
<meta name=”viewport” content=”width=device-width, initial-scale=1″/>
<%--    头部制作--%>
<div class="header">
    <img src="/static/img/logo.jpg">
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
<%--表格上方制作--%>
<div class="formt">
    <div class="import_export"> 导入导出</div>
    <div class="declare" onclick="changeVisibilityv()">申报</div>
    <div class="query"><input type="button" value="查询"></div>
    <input type="text">
</div>
<br>
<br>
<hr style="margin-top: 4px;">
<input type="button" style="margin-left: 20px;margin-right: 60px;" class="dao" value="导出">
<input type="button" class="dao" onclick="changeVisibilityv()" value="导入">
<%--表格制造--%>
<div class="ta">
    <table border="1" cellspacing="0" cellpadding="0" border-collapse="collapse">
        <tr>
            <th>序号</th>
            <th>工号</th>
            <th>姓名</th>
            <th>申报类型</th>
            <th>申报时间</th>
            <th>申报状态</th>
            <th>审核人</th>
            <th>审核时间</th>
            <th>操作</th>
        </tr>
        <% for (int i = 0; i < 9; i++) {%>
        <tr>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td class="btn"><input type="button" value="查看">
                <input type="button" onclick="changeVisibilitym()" value="修改">
                <input type="button" value="删除"></td>
        </tr>
        <%}%>
    </table>
</div>
<%--导入表格--%>
<div class="import">
    <span class="im">选择模板</span>
    <select class="is">
        <option value="individual">先进个人</option>
        <option value="group">先进集体</option>
    </select><br>
    <input type="button" class="bot" value="下载模板"><br>
    <hr>
    <input type="button" style="margin-top: 85px;margin-left: 105px;" class="in" value="数据导入">
    <input type="button" class="in" onclick="changeVisibilitym()" value="取消">
</div>
</body>
</html>
