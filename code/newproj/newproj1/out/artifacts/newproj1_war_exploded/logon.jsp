<%--
  Created by IntelliJ IDEA.
  User: liu
  Date: 2021/7/23
  Time: 21:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<html>
<head>
    <title>��¼</title>
    <link rel="stylesheet" href="css/logon.css">
</head>
<body>
<meta name=��viewport�� content=��width=device-width, initial-scale=1��/>
<%--ͷ������--%>
<div class="header">
    <img src="images/img.jpg">
    <div class="head">
        <div class="headr"><p>�ܹ����Ƚ��������Ƚ�����</p><br>
            <p class="p1">�ۺ���Ϣ����ϵͳ</p>
        </div>
        <div class="hea">ZGH</div>
    </div>
</div>
<%--��¼����--%>
<div class="logon">
    <div class="uname"><span>�û���:</span><input type="text"></div>
    <br>
    <div class="passd"><span>��&nbsp;&nbsp;&nbsp;��:</span><input type="text">
        <span class="wpassd" onclick="window.location.href='password_reset.jsp'">��������</span></div>
    <br>
    <input type="button" class="blogon" value="��¼">
</div>
<%--�ײ�����--%>
<div class="foot"></div>
</body>
</html>
