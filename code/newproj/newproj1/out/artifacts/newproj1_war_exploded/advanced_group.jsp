<%--
  Created by IntelliJ IDEA.
  User: liu
  Date: 2021/7/22
  Time: 21:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<html>
<head>
    <title>�Ƚ��������</title>
    <link rel="stylesheet" href="css/Advanced_individual.css">
    <link rel="stylesheet" href="css/advanced_group.css">
    <style>
        .apply {
            display: none;
        }
    </style>
    <script type="text/javascript">
        function changeVisibilityv() {
            $(".apply").css("display", "block");
        }

        function changeVisibilityh() {
            $(".apply").css("display", "none");
        }
    </script>
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
        <div>�Ƚ�������Ϣ����</div>
        <div>�϶������</div>
        <div>�˻�����</div>
    </div>
    <div class="ba">
        <div>�˳�</div>
        <div>��¼</div>
        <div>��������</div>
    </div>
</div>
<%--����Ϸ�����--%>
<div class="formt">
    <div class="advanced_people">�Ƚ�������Ϣ</div>
    <div class="declare" onclick="changeVisibilityv()">�걨</div>
    <div class="query"><input type="button" value="��ѯ"></div>
    <input type="text">
</div>
<br>
<br>
<hr style="margin-top: 4px;margin-bottom: 30px">
<%--�������--%>
<div class="ta">
    <table border="1" cellspacing="0" cellpadding="0" border-collapse="collapse">
        <tr>
            <th>���</th>
            <th>����</th>
            <th>�걨������</th>
            <th>�걨����</th>
            <th>�걨ʱ��</th>
            <th>���״̬</th>
            <th>�����</th>
            <th>���ʱ��</th>
            <th>���帺����</th>
            <th>����</th>
        </tr>
        <% for (int i = 0; i < 10; i++) {%>
        <tr>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td class="btn"><input type="button" value="�鿴">
                <input type="button" value="�޸�">
                <input type="button" value="ɾ��"></td>
        </tr>
        <%}%>
    </table>
    <%--���������--%>
    <div class="apply">
        <div class="q">�Ƚ�������Ϣ�걨</div>
        <div style="margin-top: 40px">
            <span>��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��:</span><input type="text">
            <span>��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��:</span><input type="text">
        </div>
        <div>
            <span>��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��:</span><input type="text">
            <span>��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ַ:</span><input type="text"><br>
        </div>
        <div>
            <span>��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��:</span><input type="text">
            <span>��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��:</span><input type="text"><br>
        </div>
        <div class="sb">
            <span>�걨����:</span>
            <select>
                <option value="volvo">Volvo</option>
                <option value="saab">Saab</option>
                <option value="opel">Opel</option>
                <option value="audi">Audi</option>
            </select>
            <span>���帺����:</span><input type="text"><br>
        </div>
        <div><span>֤������:</span><input type="text"></div>
        <input type="button" class="cc1" value="�ύ">
        <input type="button" class="cc2" onclick="changeVisibilityh()" value="ȡ��">
    </div>
</div>
</body>
</html>
