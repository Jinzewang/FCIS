<%@ page import="com.fcis.model.informationManagement.outstandingPersonDeclare.ModelWorker" %>
<%@ page import="java.util.List" %>
<%@ page import="com.fcis.model.informationManagement.advancedCollective.CollectiveInfo" %><%--
  Created by IntelliJ IDEA.
  User: liu
  Date: 2021/7/22
  Time: 21:28
  To change this template use File | Settings | File Templates.
  传递  接收
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<%
    List<ModelWorker> mo = (List<ModelWorker>) session.getAttribute("modelWorkerList");
    List<CollectiveInfo> co = (List<CollectiveInfo>) session.getAttribute("allCollectives");
    //接收四个类数据
    int pagelg = 1;
    int pagelj = 1;

%>
<html>
<head>
    <title>认定与审核</title>
    <link rel="stylesheet" href="../static/css/cognizance_examine.css">
    <link rel="stylesheet" href="../static/js/chuandi.js">
    <style>
        /*将审核页面进行隐藏*/
        .cognizance {
            display: none;
        }
    </style>
    <script type="text/javascript">
        //个人
        function subsg(ID, addrs) {
            <% if(pagelg==1) {%>
            alert("这是最小页了")
            <% }else {%>
            $.ajax({
                cache: true,
                type: "POST",
                url: addrs,
                data: <%=pagelg-1%>,// 你的formid
                async: false,
                error: function (request) {
                    alert("Connection error:" + request.error);
                },
            });
            <%}%>
        }

        function subxg(ID, addrs) {
            $.ajax({
                cache: true,
                type: "POST",
                url: addrs,
                data: <%=pagelg+1%>,// 你的formid
                async: false,
                error: function (request) {
                    alert("Connection error:" + request.error);
                },
            });
        }

        //集体
        function subsj(ID, addrs) {
            <% if(pagelj==1) {%>
            alert("这是最小页了")
            <% }else {%>
            $.ajax({
                cache: true,
                type: "POST",
                url: addrs,
                data: <%=pagelj-1%>,// 你的formid
                async: false,
                error: function (request) {
                    alert("Connection error:" + request.error);
                },
            });
            <%}%>
        }

        function subxj(ID, addrs) {
            $.ajax({
                cache: true,
                type: "POST",
                url: addrs,
                data: <%=pagelj+1%>,// 你的formid
                async: false,
                error: function (request) {
                    alert("Connection error:" + request.error);
                },
            });
        }

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
    <input type="button" value="先进个人" style="width: 80px;float: left;margin-left: 20px;" onclick="geren()">
    <input type="button" value="先进集体" style="width: 80px;float: left;margin-left: 20px;" onclick="jiti()">
    <div class="query"><input type="button" value="查询"></div>
    <input type="text">
</div>
<br>
<br>
<hr style="margin-top: 4px;margin-bottom: 30px">
<%--表格制造--%>
<div class="ta">
    <%--    个人--%>
    <div class="geren">
        <table border="1" cellspacing="0" cellpadding="0" border-collapse="collapse">
            <tr>
                <th>序号</th>
                <th>编号</th>
                <th>姓名</th>
                <th>性别</th>
                <th>申报称号</th>
                <th>申报状态</th>
                <th>审核时间</th>
                <th>操作</th>
            </tr>
            <% for (int i = 0; i < 9; i++) {%>
            <form method="post" id="individual">
                <tr>
                    <td><input type="text" readonly="readonly">${status.count}</td>
                    <td><input type="text" readonly="readonly"><%=mo.get(i).getId()%>
                    </td>
                    <td><input type="text" readonly="readonly"><%=mo.get(i).getInfo().getModelName()%>
                    </td>
                    <td><input type="text" readonly="readonly"><%=mo.get(i).getInfo().getSex()%>
                    </td>
                    <td><input type="text" readonly="readonly"><%=mo.get(i).getModelWorkerTitle()%>
                    </td>
                    <td><input type="text" readonly="readonly"><%=mo.get(i).getIsCertified()%>
                    </td>
                    <td><input type="text" readonly="readonly"><%=mo.get(i)%>
                    </td>
                    <input type="hidden" name="" value="<%=mo.get(i).getId()%>">
                    <td class="btn"><input type="button" onclick="sub('individual','selectUsers')" value="查看">
                        <input type="button" onclick="changeVisibilitym();sub('individual','selectUsers')" value="修改">
                        <input type="button" value="删除"></td>
                </tr>
            </form>
            <%}%>
        </table>
        <input name="prev" type="button" value="上一页" onClick="subsg('individual','selectUsers')"
               style="margin-left: 580px">
        <div style="float: left;height: 40px;line-height: 40px;">第<%=1%>页</div>
        <input name="next" type="button" value="下一页" onClick="subxg('individual','selectUsers')">
    </div>
    <%--        集体--%>
    <div class="jiti">
        <table border="1" cellspacing="0" cellpadding="0" border-collapse="collapse">
            <tr>
                <th>序号</th>
                <th>编号</th>
                <th>集体名称</th>
                <th>所属地</th>
                <th>荣誉称号</th>
                <th>审核状态</th>
                <th>集体负责人</th>
                <th>集体负责人联系方式</th>
                <th>操作</th>
            </tr>
            <%--        用分页方法重构一次--%>
            <% for (int i = 0; i < 9; i++) {%>
            <form method="post" id="individual">
                <tr>
                    <td><input type="text" readonly="readonly">${status.count}</td>
                    <td><input type="text" readonly="readonly"><%=co.get(i).getId()%>
                    </td>
                    <td><input type="text" readonly="readonly"><%=co.get(i).getCompanyName()%>
                    </td>
                    <td><input type="text" readonly="readonly"><%=co.get(i).getCollectiveProvance()%>
                    </td>
                    <td><input type="text" readonly="readonly"><%=co.get(i).getCollectiveTitle()%>
                    </td>
                    <td><input type="text" readonly="readonly"><%=co.get(i).getIsDeleteAdvance()%>
                    </td>
                    <td><input type="text" readonly="readonly"><%=co.get(i).getPrincipalName()%>
                    </td>
                    <td><input type="text" readonly="readonly"><%=co.get(i).getPrincipalPhone()%>
                    </td>
                    <input type="hidden" name="" value="<%=co.get(i).getId()%>">
                    <td class="btn">
                        <input type="button" onclick="changeVisibilitym();sub('individual','selectUsers')" value="审核">
                        <input type="button" value="删除">
                    </td>
                </tr>
            </form>
            <%}%>
        </table>
        <input name="prev" type="button" value="上一页" onClick="subsj('individual','selectUsers')"
               style="margin-left: 560px">
        <div style="float: left;height: 40px;line-height: 40px">第<%=1%>页</div>
        <input name="next" type="button" value="下一页" onClick="subxj('individual','selectUsers')">
    </div>
    <%--认定制作--%>
    <div class="cognizance">
        <div class="q">先进信息审核</div>
        <%--        先进个人审核小页面--%>
        <form action="/auditModelWorker">
            <div id="step1" style="margin-bottom: 30px">
                <div class="st1"><span>&emsp;称号:</span><input type="text" readonly="readonly" value=""></div>
                <div class="st2"><span>&emsp;待遇:</span><input type="text" readonly="readonly" value=""></div>
                <span>批语:</span><textarea name="reviewModelWorker" class="mt" cols="25" rows="5"
                                          style="margin-top: 23px"></textarea>
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
