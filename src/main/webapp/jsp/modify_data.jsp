<%@ page import="com.fcis.model.informationManagement.outstandingPersonDeclare.ModelWorker" %><%--
  Created by IntelliJ IDEA.
  User: liu
  Date: 2021/7/27
  Time: 15:52
  To change this template use File | Settings | File Templates.
  ���� ��ת����������
--%>

<%
    //�������Ķ�Ӧ������
    ModelWorker mo = (ModelWorker) session.getAttribute("allUser");
%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<html>
<head>
    <title>�޸�����</title>
    <link rel="stylesheet" href="../static/css/modify_data.css">
</head>
<body>
<meta name=��viewport�� content=��width=device-width, initial-scale=1��/>
<%--    ͷ������--%>
<div class="header">
    <img src=".. /static/img/logo.jpg">
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
<%--�����޸�����--%>
<div class="pcenter">�����޸�</div>
<br>
<hr>
<br>
<%--���岿��--%>
<form>
    <div class="mainb">
        <div class="mleft">
            <div class="iml">
                <img src="#"><br>
                <input type="file" class="pho" value="photo">�ϴ�ͼƬ
            </div>
            <div class="cen">
                <span class="ls">����:</span><input type="text" style="margin-right: 400px;margin-top: 50px" value="">
                <span class="rs">�˺�:</span><input type="text" value=""><br>
                <span class="ls" style="margin-left: 20px">���֤��:</span><input type="text" value=""
                                                                              style="margin-right: 400px">
                <span class="rs">�Ա�:</span>
                <input type="radio" class="rad" value="man" name="sex" checked="checked"
                       style="width: 20px;height: 20px;">��
                <input type="radio" value="woman" class="rad" name="sex"
                       style="margin-left: 30px;width: 20px;height: 20px;">Ů<br>
                <span class="ls">����:</span><input type="text" style="margin-right: 400px">
                <span class="rs">�绰:</span><input type="text" style="margin-right: 400px"
                                                  value=""><br>
                <span style="margin-left: 20px">��������:</span><input type="text" value="">
            </div>
        </div>
        <input type="button" class="revise" value="����">
        <input type="button" class="reset" value="ȡ��">
    </div>
</form>
</body>
</html>
