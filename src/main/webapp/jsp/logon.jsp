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
    <link rel="stylesheet" href="../static/css/logon.css">
</head>
<body>
<meta name=��viewport�� content=��width=device-width, initial-scale=1��/>
<%--ͷ������--%>
<div class="header">
    <div class="head">
        <div class="headr"><p>�ܹ����Ƚ��������Ƚ�����</p><br>
            <p class="p1">�ۺ���Ϣ����ϵͳ</p>
        </div>
        <img src="/static/img/logo.jpg" class="rimg">
        <div class="yin">
            <p>Advanced individual and collective integrated information management</p><br>
            <p class="rbimg"> system of the Federation of trade unions</p>
        </div>
    </div>
</div>
<%--��¼����--%>
<form action="/checkLogin">
    <div class="logon">
        <div class="uname"><span>�û���:</span><input type="text" name="username"></div>
        <br>
        <div class="passd"><span>��&nbsp;&nbsp;&nbsp;��:</span><input type="password" name="password">
            <span class="wpassd" onclick="window.location.href='password_reset.jsp'">��������</span></div>
        <br>
        <input type="submit" class="blogon" value="��¼">
    </div>
</form>
<%--�ײ�����--%>
<div class="foot"></div>
</body>
</html>
