<%--
  Created by IntelliJ IDEA.
  User: liu
  Date: 2021/7/27
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<html>
<head>
    <title>���뵼��</title>
    <link rel="stylesheet" href="/static/css/import_export.css">
    <style>
        .import {
            display: none;
        }
    </style>
    <script>
        function changeVisibilityv() {
            //�걨��ť��ʵ��
            $(".import").css("display", "block");
        }

        function changeVisibilitym() {
            //�걨��ť��ʵ��
            $(".import").css("display", "none");
        }
    </script>
</head>
<body>
<meta name=��viewport�� content=��width=device-width, initial-scale=1��/>
<%--    ͷ������--%>
<div class="header">
    <img src="/static/img/logo.jpg">
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
<%--����Ϸ�����--%>
<div class="formt">
    <div class="import_export"> ���뵼��</div>
    <div class="declare" onclick="changeVisibilityv()">�걨</div>
    <div class="query"><input type="button" value="��ѯ"></div>
    <input type="text">
</div>
<br>
<br>
<hr style="margin-top: 4px;">
<input type="button" style="margin-left: 20px;margin-right: 60px;" class="dao" value="����">
<input type="button" class="dao" onclick="changeVisibilityv()" value="����">
<%--�������--%>
<div class="ta">
    <table border="1" cellspacing="0" cellpadding="0" border-collapse="collapse">
        <tr>
            <th>���</th>
            <th>����</th>
            <th>����</th>
            <th>�걨����</th>
            <th>�걨ʱ��</th>
            <th>�걨״̬</th>
            <th>�����</th>
            <th>���ʱ��</th>
            <th>����</th>
        </tr>
        <% for (int i = 0; i < 9; i++) {%>
        <tr>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td class="btn"><input type="button" value="�鿴">
                <input type="button" onclick="changeVisibilitym()" value="�޸�">
                <input type="button" value="ɾ��"></td>
        </tr>
        <%}%>
    </table>
</div>
<%--������--%>
<div class="import">
    <span class="im">ѡ��ģ��</span>
    <select class="is">
        <option value="individual">�Ƚ�����</option>
        <option value="group">�Ƚ�����</option>
    </select><br>
    <input type="button" class="bot" value="����ģ��"><br>
    <hr>
    <input type="button" style="margin-top: 85px;margin-left: 105px;" class="in" value="���ݵ���">
    <input type="button" class="in" onclick="changeVisibilitym()" value="ȡ��">
</div>
</body>
</html>
