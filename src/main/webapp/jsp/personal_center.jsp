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
    <title>��������</title>
    <link rel="stylesheet" href="/static/css/personal_center.css">
</head>
<body>
<meta name=��viewport�� content=��width=device-width, initial-scale=1��/>
<%--    ͷ������--%>
<div class="header">
    <div class="hea">ZGH</div>
    <div><p>�ܹ����Ƚ����˺��Ƚ�����</p><br>
        <p class="p1">�ۺ���Ϣ����ϵͳ</p></div>
</div>
<%--bars��������--%>
<div class="bars">
    <div class="bar">
        <div onclick="window.location.href='home_page.jsp'">��ҳ</div>
        <div onclick="window.location.href='Advanced_individual.jsp'" target="_blank">�Ƚ�������Ϣ����</div>
        <div onclick="window.location.href='advanced_group.jsp'">�Ƚ�������Ϣ����</div>
        <div onclick="window.location.href='cognizance_examine.jsp'">�϶������</div>
        <div onclick="window.location.href='home_page.jsp'">�˻�����</div>
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
    <div><img src="#"></div>
    <br>
    <div class="uname"><span>������</span><input type="text" disabled="disabled"></div>
    <div class="honor"><span>����������</span></div>
    <br>
    <div class="worknumber"><span>���ţ�</span><input type="text" disabled="disabled"></div>
    <br>
    <div class="department"><span>���ţ�</span><input type="text" disabled="disabled"></div>
    <br>
    <div class="posts"><span>ְλ��</span><input type="text" disabled="disabled"></div>
    <br>
    <div class="email"><span>�������䣺</span><input type="text" disabled="disabled"></div>
    <br>
    <input type="button" class="revise" value="�޸�����">
    <input type="button" class="reset" value="��������">
</div>
</body>
</html>
