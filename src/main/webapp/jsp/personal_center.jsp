<%@ page import="java.util.List" %>
<%@ page import="com.fcis.model.informationManagement.outstandingPersonDeclare.ModelWorker" %>
<%@ page import="com.fcis.model.User" %><%--
  Created by IntelliJ IDEA.
  User: liu
  Date: 2021/7/23
  Time: 16:13
  To change this template use File | Settings | File Templates.
  ������  ֻ����
--%>
<%
    //��������������
    List<User> us = (List<User>) session.getAttribute("users");

%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>��������</title>
    <link rel="stylesheet" href="../static/css/personal_center.css">
</head>
<body>
<meta name=��viewport�� content=��width=device-width, initial-scale=1��/>
<%--    ͷ������--%>
<div class="header">
    <img src="../static/img/logo.jpg">
    <div><p>�ܹ����Ƚ����˺��Ƚ�����</p><br>
        <p class="p1">�ۺ���Ϣ����ϵͳ</p></div>
</div>
<%--bars��������--%>
<div class="bars">
    <div class="bar">
        <div style="margin-left: 80px" onclick="window.location.href='home_page.jsp'">��ҳ</div>
        <div onclick="window.location.href='Advanced_individual.jsp'" target="_blank">�Ƚ�������Ϣ����</div>
        <div onclick="window.location.href='advanced_group.jsp'">�Ƚ�������Ϣ����</div>
        <div onclick="window.location.href='cognizance_examine.jsp'">�϶������</div>
        <div onclick="window.location.href='statistics.jsp'">��Ϣͳ��</div>
        <div onclick="window.location.href='import_export.jsp'">���뵼��</div>
    </div>
    <div class="ba">
        <div onclick="window.location.href='logon.jsp'">�˳�</div>
        <div onclick="window.location.href='logon.jsp'">��¼</div>
        <div onclick="window.location.href='personal_center.jsp'">��������</div>
    </div>
</div>
<%--������������--%>
<div class="pcenter">��������</div>
<br>
<hr>
<br>
<%--���岿��--%>
<div class="mainb">
    <div class="mleft">
        <img src="#">
        <span>����:</span><input type="text" readonly="readonly" style="margin-right: 150px;margin-top: 50px"
                               value="<%=us.get(0).getUsername()%>>">
        <span>�Ա�:</span><input type="text" readonly="readonly" value="<%=us.get(0).getUser_sex()%>"><br>
        <span>����:</span><input type="text" readonly="readonly" style="margin-right: 150px"
                               value="<%=us.get(0).getEmail()%>">
        <span>�绰:</span><input type="text" readonly="readonly" value="<%=us.get(0).getUser_phone()%>"><br>
        <span style="margin-left: 150px">����˺�:</span><input type="text" readonly="readonly"
                                                            value="<%=us.get(0).getIdentifyCard()%>">
    </div>
    <div class="mright">
        <span class="mr1">��������:</span><textarea style="float: left" cols="25" rows="5" readonly="readonly"></textarea>
        <span class="mr2">�����ܴ���:</span><textarea class="mt" cols="25" rows="5" readonly="readonly"></textarea>
    </div>
    <input type="button" class="revise" onclick="window.location.href='modify_data.jsp'" value="�޸�����">
    <input type="button" class="reset" value="�޸�����">
</div>
</body>
</html>
