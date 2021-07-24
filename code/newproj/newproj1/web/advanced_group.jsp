<%--
  Created by IntelliJ IDEA.
  User: liu
  Date: 2021/7/22
  Time: 21:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<html>
<head>
    <title>先进集体管理</title>
    <link rel="stylesheet" href="css/Advanced_individual.css">
    <link rel="stylesheet" href="css/advanced_group.css">
    <style>
        .apply {
            display: none;
        }
    </style>
    <script type="text/javascript">
        function changeVisibilityv() {
            $(".apply").css("display", "block");
        }

        function changeVisibilityh() {
            $(".apply").css("display", "none");
        }
    </script>
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
        <div>先进集体信息管理</div>
        <div>认定与审核</div>
        <div>账户管理</div>
    </div>
    <div class="ba">
        <div>退出</div>
        <div>登录</div>
        <div>个人中心</div>
    </div>
</div>
<%--表格上方制作--%>
<div class="formt">
    <div class="advanced_people">先进集体信息</div>
    <div class="declare" onclick="changeVisibilityv()">申报</div>
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
            <th>集体负责人</th>
            <th>操作</th>
        </tr>
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
                <input type="button" value="修改">
                <input type="button" value="删除"></td>
        </tr>
        <%}%>
    </table>
    <%--申请表制作--%>
    <div class="apply">
        <div class="q">先进集体信息申报</div>
        <div style="margin-top: 40px">
            <span>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名:</span><input type="text">
            <span>电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话:</span><input type="text">
        </div>
        <div>
            <span>工&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号:</span><input type="text">
            <span>地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址:</span><input type="text"><br>
        </div>
        <div>
            <span>邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱:</span><input type="text">
            <span>部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;门:</span><input type="text"><br>
        </div>
        <div class="sb">
            <span>申报类型:</span>
            <select>
                <option value="volvo">Volvo</option>
                <option value="saab">Saab</option>
                <option value="opel">Opel</option>
                <option value="audi">Audi</option>
            </select>
            <span>集体负责人:</span><input type="text"><br>
        </div>
        <div><span>证明材料:</span><input type="text"></div>
        <input type="button" class="cc1" value="提交">
        <input type="button" class="cc2" onclick="changeVisibilityh()" value="取消">
    </div>
</div>
</body>
</html>
