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
    <link rel="stylesheet" href="css/password_reset.css">
    <style>

        /*@media screen and (max-device-width: 400px) {*/
        /*    * {*/
        /*        float: none;*/
        /*    }*/
        /*}*/

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
    <img src="images/img.jpg">
    <div class="head">
        <div class="headr"><p>�ܹ����Ƚ��������Ƚ�����</p><br>
            <p class="p1">�ۺ���Ϣ����ϵͳ</p>
        </div>
        <div class="hea">ZGH</div>
    </div>
</div>
<%--������������--%>
<h2>��������</h2>
<div class="passw">
    <div>
        <span>��&nbsp;&nbsp;&nbsp;��:</span><input type="text">
        &nbsp;&nbsp;&nbsp;
        <span>&nbsp;&nbsp;&nbsp;�����ʼ�:</span><input type="text">
    </div>
    <div>
        <span>��&nbsp;&nbsp;&nbsp;��:</span><input type="text">
        &nbsp;&nbsp;&nbsp;
        <span>����������:</span><input type="password" class="inputd">
    </div>
    <div>
        <span>��֤��:</span><input type="text">
        &nbsp;&nbsp;&nbsp;
        <span>ȷ��������:</span><input type="password" class="isok">
    </div>
    <input type="button" class="confirm" onclick="judge()" value="ȷ��">
    <input type="button" class="cancel" value="ȡ��">

    <%--    ��ʾ--%>
    <div class="tips" style="margin-top: -140px; margin-left: 231px;">
        <span>�������óɹ��������µ�½</span><br>
        <input type="button" onclick="changeVisibilityh()" value="ȷ��">
    </div>
</div>
<%--�ײ�����--%>
<div class="foot"></div>
</body>
</html>
