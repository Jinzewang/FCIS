<%--
  Created by IntelliJ IDEA.
  User: liu
  Date: 2021/7/27
  Time: 15:52
  To change this template use File | Settings | File Templates.
  传递 跳转到个人中心
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<html>
<head>
    <title>修改资料</title>
    <link rel="stylesheet" href="/static/css/modify_data.css">
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
<%--资料修改内容--%>
<div class="pcenter">资料修改</div>
<br>
<hr>
<br>
<%--主体部分--%>
<div class="mainb">
    <div class="mleft">
        <div class="iml">
            <img src="#"><br>
            <input type="file" class="pho" value="photo">上传图片
        </div>
        <div class="cen">
            <span class="ls">姓名:</span><input type="text" style="margin-right: 400px;margin-top: 50px" value="">
            <span class="rs">民族:</span><input type="text" value=""><br>
            <span class="ls">工号:</span><input type="text" style="margin-right: 400px" value="">
            <span class="rs">部门:</span><input type="text" value=""><br>
            <span class="ls">性别:</span>
            <input type="radio" class="rad" value="man" name="sex" checked="checked"
                   style="width: 20px;height: 20px;">男
            <input type="radio" value="woman" class="rad" name="sex"
                   style="margin-left: 30px;width: 20px;height: 20px;">女
            <span style="margin-left: 475px">职位:</span><input type="text" value=""><br>
            <span class="ls">电话:</span><input type="text" style="margin-right: 400px"
                                              value="">
            <span class="rs">地域:</span><input type="text" value=""><br>
            <span>出生年月:</span><input type="date" style="margin-right: 400px;width: 158px;">
            <span>身份证号:</span><input type="text"><br>
            <span>文化程度:</span>
            <select style="margin-right: 340px">
                <option value="primary_school">小学</option>
                <option value="junior_middle_school">初中</option>
                <option value="high_school">高中</option>
                <option value="specialty">专科</option>
                <option value="undergraduate">本科</option>
                <option value="master">硕士</option>
                <option value="doctor">博士</option>
            </select>
            <span>身体健康程度:</span>
            <input type="radio" name="healthy" class="rad" value="yse" checked="checked"
                   style="width: 20px;height: 20px;">健康
            <input type="radio" value="no" name="healthy" class="rad"
                   style="margin-left: 10px;width: 20px;height: 20px;">不健康<br>
            <span>政治面貌:</span>
            <select>
                <option value="masses">群众</option>
                <option value="league_member">团员</option>
                <option value="party_member">党员</option>
            </select><br>
            <span>电子邮箱:</span><input type="text" value="">
        </div>
    </div>
    <input type="button" class="revise" value="保存">
    <input type="button" class="reset" value="取消">
</div>
</body>
</html>
