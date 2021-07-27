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
    <title>�϶������</title>
    <link rel="stylesheet" href="/static/css/cognizance_examine.css">
    <style>
        /*�����ҳ���������*/
        .cognizance {
            display: none;
        }
    </style>
    <script type="text/javascript">

        function changeVisibilitym() {
            //�޸İ�ť��ʵ��
            $(".cognizance").css("display", "block");

            $(".cognizance").find('input[type=text],select,input[type=hidden]').each(function () {
                $(this).val('');
            });
        }

        function changeVisibilityh() {
            //ȡ���ķ���
            $(".cognizance").css("display", "none");
            //д����ת

            $(".cognizance").find('input[type=text],select,input[type=hidden]').each(function () {
                $(this).val('');
            });
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
    <div class="advanced_people">�϶������</div>
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
            <th>������</th>
            <th>����</th>
        </tr>
        <%--        �÷�ҳ�����ع�һ��--%>
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
                <input type="button" onclick="changeVisibilitym()" value="���">
                <input type="button" value="ɾ��"></td>
        </tr>
        <%}%>
    </table>
    <%--�϶�����--%>
    <div class="cognizance">
        <div class="q">�Ƚ���Ϣ���</div>
        <%--        ��һ��Сҳ��--%>
        <div id="step1" style="margin-bottom: 30px">
            <div class="st1"><span>&nbsp;ѡ����ģ�ƺ�:</span>
                <select name="modelWorkerTitle">
                    <option value="nationalModelWorker">ȫ����ģ</option>
                    <option value="SichuanModelWorker">�Ĵ�ʡ��ģ</option>
                    <option value="national51ModelWorker">ȫ����һ�Ͷ�����</option>
                    <option value="Sichuan51ModelWorker">�Ĵ���һ�Ͷ�����</option>
                    <option value="other">�����Ͷ������ƺ�</option>
                </select></div>
            <div class="st2"><span>&nbsp;ѡ����ģ����:</span>
                <select name="modelWorkerTreatment">
                    <option value="enjoyNationalModelWorker">����ȫ���Ͷ�ģ������</option>
                    <option value="EnjoySichuanModelWorker">����ʡ�������Ͷ�ģ������</option>
                    <option value="cantModelWorkerTreatment">���������Ͷ�ģ������</option>
                    <option value="cantModelWorker">��������ʡ�������Ͷ�ģ������</option>
                </select>
            </div>
        </div>
        <div class="step2">
            <input type="button" class="cc1" onclick="changeVisibilityh()" value="�ύ">
            <input type="button" class="cc2" onclick="changeVisibilityh()" value="ȡ��">
        </div>
    </div>
</div>
</body>
</html>
