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
<form method="post">
    <div class="mainb">
        <div class="mleft">
            <div class="iml">
                <img src="#"><br>
                <input type="file" class="pho" value="photo">�ϴ�ͼƬ
            </div>
            <div class="cen">
                <span class="ls">����:</span><input name="username" type="text" style="margin-right: 400px;margin-top: 50px"
                                                  value="<%=mo.getInfo().getModelName()%>">
<%--                <span class="rs">����:</span><input type="text" value="<%=mo.getInfo().getNationality()%>"><br>--%>
                <span class="ls">�˺�:</span><input name="account" type="text" style="margin-right: 400px" value="0">
                <span class="rs">���֤��:</span><input name="identifyCard" type="text" value="0"><br>
                <span class="ls">�Ա�:</span>
                <input type="radio" class="rad" value="man" name="user_sex" checked="checked"
                       style="width: 20px;height: 20px;">��
                <input type="radio" value="woman" class="rad" name="user_sex"
                       style="margin-left: 30px;width: 20px;height: 20px;">Ů
                <span style="margin-left: 475px">����:</span><input name="email" type="text"
                                                                  value="<%=mo.getInfo().getJobTitle()%>"><br>
                <span class="ls">�绰:</span><input name="user_phone" type="text" style="margin-right: 400px"
                                                  value="<%=mo.getInfo().getPhone()%>">
                <%--<span class="rs">����:</span><input type="text" value="<%=mo.getInfo().getProvence()%>"><br>
                <span>��������:</span><input type="date" style="margin-right: 400px;width: 158px;">
                <span>���֤��:</span><input type="text"><br>
                <span>�Ļ��̶�:</span>
                <select style="margin-right: 340px">
                    <option value="primary_school">Сѧ</option>
                    <option value="junior_middle_school">����</option>
                    <option value="high_school">����</option>
                    <option value="specialty">ר��</option>
                    <option value="undergraduate">����</option>
                    <option value="master">˶ʿ</option>
                    <option value="doctor">��ʿ</option>
                </select>
                <span>���彡���̶�:</span>
                <input type="radio" name="healthy" class="rad" value="yse" checked="checked"
                       style="width: 20px;height: 20px;">����
                <input type="radio" value="no" name="healthy" class="rad"
                       style="margin-left: 10px;width: 20px;height: 20px;">������<br>
                <span>������ò:</span>
                <select>
                    <option value="masses">Ⱥ��</option>
                    <option value="league_member">��Ա</option>
                    <option value="party_member">��Ա</option>
                </select><br>--%>
                <span>��������:</span><input name="union" type="text" value="0">
            </div>
        </div>
        <input type="submit" class="revise" value="����">
        <input type="button" class="reset" onclick="window.location.href='personal_center.jsp'" value="ȡ��">
    </div>
</form>
</body>
</html>
