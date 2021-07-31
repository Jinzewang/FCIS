<%--
  Created by IntelliJ IDEA.
  User: liu
  Date: 2021/7/22
  Time: 21:28
  To change this template use File | Settings | File Templates.
  传递  接收
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<html>
<head>
    <title>认定与审核</title>
    <link rel="stylesheet" href="../static/css/cognizance_examine.css">
    <style>
        /*将审核页面进行隐藏*/
        .cognizance {
            display: none;
        }
    </style>
    <script type="text/javascript">

        function changeVisibilitym() {
            //修改按钮的实现
            $(".cognizance").css("display", "block");

            $(".cognizance").find('input[type=text],select,input[type=hidden]').each(function () {
                $(this).val('');
            });
        }

        function changeVisibilityh() {
            //取消的方法
            $(".cognizance").css("display", "none");
            //写个跳转

            $(".cognizance").find('input[type=text],select,input[type=hidden]').each(function () {
                $(this).val('');
            });
        }
    </script>
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
<%--表格上方制作--%>
<div class="formt">
    <div class="advanced_people">认定与审核</div>
    <div class="query"><input type="button" value="查询"></div>
    <input type="text">
</div>
<br>
<br>
<hr style="margin-top: 4px;margin-bottom: 30px">
<%--表格制造--%>
<div class="ta">
    <table border="1" cellspacing="0" cellpadding="0" border-collapse="collapse">
        <tr>
            <th>序号</th>
            <th>工号</th>
            <th>申报人姓名</th>
            <th>申报类型</th>
            <th>申报时间</th>
            <th>审核状态</th>
            <th>审核人</th>
            <th>审核时间</th>
            <th>负责人</th>
            <th>操作</th>
        </tr>
        <%--        用分页方法重构一次--%>
        <% for (int i = 0; i < 10; i++) {%>
        <tr>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td class="btn"><input type="button" value="查看">
                <input type="button" onclick="changeVisibilitym()" value="审核">
                <input type="button" value="删除"></td>
        </tr>
        <%}%>
    </table>
    <%--认定制作--%>
    <div class="cognizance">
        <div class="q">先进信息审核</div>
        <%--        先进个人审核小页面--%>
        <form action="/auditModelWorker">
            <div id="step1" style="margin-bottom: 30px">
                <div class="st1"><span>&emsp;称号:</span><input type="text" readonly="readonly" value=""></div>
                <div class="st2"><span>&emsp;待遇:</span><input type="text" readonly="readonly" value=""></div>
                <span>批语:</span><textarea name="reviewModelWorker" class="mt" cols="25" rows="5" style="margin-top: 23px"></textarea>
            </div>
            <div class="step2">
                <input type="button" class="cc1" onclick="changeVisibilityh()" value="提交">
                <input type="button" class="cc2" onclick="changeVisibilityh()" value="取消">
            </div>
        </form>
    </div>
</div>
</body>
</html>
