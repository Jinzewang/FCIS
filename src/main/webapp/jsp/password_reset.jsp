<%--
  Created by IntelliJ IDEA.
  User: liu
  Date: 2021/7/23
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<html>
<head>
    <title>��������</title>
    <link rel="stylesheet" href="../static/css/password_reset.css">
    <style>

        .tips {
            display: none;
        }
    </style>
    <script>
        function judge() {
            if ($(".inputd").val() == $(".isok").val() && $(".inputd").val() != null && $(".isok").val() != null) {
                $(".tips").css("display", "block");
            }
        }

        function changeVisibilityh() {
            $(".tips").css("display", "none");
        }
    </script>
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
<%--������������--%>
<h2>��������</h2>
<form action="/updatePasswd" method="post">
    <div class="passw">
        <div class="pass">
            <span>����������:</span><input name="newPassWord" type="password" class="inputd">
            <span>ȷ��������:</span><input name="newPassWord1" type="password" class="isok">
        </div>
        <input type="button" class="confirm" onclick="judge()" value="ȷ��">
        <input type="button" class="cancel" onclick="window.location.href='logon.jsp'" value="ȡ��">

        <%--    ��ʾ--%>
        <div class="tips" style="margin-top: -140px; margin-left: 231px;">
            <span>�������óɹ��������µ�½</span><br>
            <input type="submit" onclick="changeVisibilityh();window.location.href='logon.jsp'" value="ȷ��">
        </div>
    </div>
</form>
<%--�ײ�����--%>
<div class="foot"></div>
</body>
</html>
