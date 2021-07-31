<%@ page import="com.fcis.model.informationManagement.outstandingPersonDeclare.ModelWorker" %>
<%@ page import="java.util.List" %>
<%@ page import="com.fcis.model.informationManagement.advancedCollective.CollectiveInfo" %><%--
  Created by IntelliJ IDEA.
  User: liu
  Date: 2021/7/22
  Time: 21:28
  To change this template use File | Settings | File Templates.
  ����  ����
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<%
    List<ModelWorker> mo = (List<ModelWorker>) session.getAttribute("modelWorkerList");
    List<CollectiveInfo> co = (List<CollectiveInfo>) session.getAttribute("allCollectives");
    //�����ĸ�������
    int pagelg = 1;
    int pagelj = 1;

%>
<html>
<head>
    <title>�϶������</title>
    <link rel="stylesheet" href="../static/css/cognizance_examine.css">
    <link rel="stylesheet" href="../static/js/chuandi.js">
    <style>
        /*�����ҳ���������*/
        .cognizance {
            display: none;
        }
    </style>
    <script type="text/javascript">
        //����
        function subsg(ID, addrs) {
            <% if(pagelg==1) {%>
            alert("������Сҳ��")
            <% }else {%>
            $.ajax({
                cache: true,
                type: "POST",
                url: addrs,
                data: <%=pagelg-1%>,// ���formid
                async: false,
                error: function (request) {
                    alert("Connection error:" + request.error);
                },
            });
            <%}%>
        }

        function subxg(ID, addrs) {
            $.ajax({
                cache: true,
                type: "POST",
                url: addrs,
                data: <%=pagelg+1%>,// ���formid
                async: false,
                error: function (request) {
                    alert("Connection error:" + request.error);
                },
            });
        }

        //����
        function subsj(ID, addrs) {
            <% if(pagelj==1) {%>
            alert("������Сҳ��")
            <% }else {%>
            $.ajax({
                cache: true,
                type: "POST",
                url: addrs,
                data: <%=pagelj-1%>,// ���formid
                async: false,
                error: function (request) {
                    alert("Connection error:" + request.error);
                },
            });
            <%}%>
        }

        function subxj(ID, addrs) {
            $.ajax({
                cache: true,
                type: "POST",
                url: addrs,
                data: <%=pagelj+1%>,// ���formid
                async: false,
                error: function (request) {
                    alert("Connection error:" + request.error);
                },
            });
        }

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
    <img src="../static/img/logo.jpg">
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
    <input type="button" value="�Ƚ�����" style="width: 80px;float: left;margin-left: 20px;" onclick="geren()">
    <input type="button" value="�Ƚ�����" style="width: 80px;float: left;margin-left: 20px;" onclick="jiti()">
    <div class="query"><input type="button" value="��ѯ"></div>
    <input type="text">
</div>
<br>
<br>
<hr style="margin-top: 4px;margin-bottom: 30px">
<%--�������--%>
<div class="ta">
    <%--    ����--%>
    <div class="geren">
        <table border="1" cellspacing="0" cellpadding="0" border-collapse="collapse">
            <tr>
                <th>���</th>
                <th>���</th>
                <th>����</th>
                <th>�Ա�</th>
                <th>�걨�ƺ�</th>
                <th>�걨״̬</th>
                <th>���ʱ��</th>
                <th>����</th>
            </tr>
            <% for (int i = 0; i < 9; i++) {%>
            <form method="post" id="individual">
                <tr>
                    <td><input type="text" readonly="readonly">${status.count}</td>
                    <td><input type="text" readonly="readonly"><%=mo.get(i).getId()%>
                    </td>
                    <td><input type="text" readonly="readonly"><%=mo.get(i).getInfo().getModelName()%>
                    </td>
                    <td><input type="text" readonly="readonly"><%=mo.get(i).getInfo().getSex()%>
                    </td>
                    <td><input type="text" readonly="readonly"><%=mo.get(i).getModelWorkerTitle()%>
                    </td>
                    <td><input type="text" readonly="readonly"><%=mo.get(i).getIsCertified()%>
                    </td>
                    <td><input type="text" readonly="readonly"><%=mo.get(i)%>
                    </td>
                    <input type="hidden" name="" value="<%=mo.get(i).getId()%>">
                    <td class="btn"><input type="button" onclick="sub('individual','selectUsers')" value="�鿴">
                        <input type="button" onclick="changeVisibilitym();sub('individual','selectUsers')" value="�޸�">
                        <input type="button" value="ɾ��"></td>
                </tr>
            </form>
            <%}%>
        </table>
        <input name="prev" type="button" value="��һҳ" onClick="subsg('individual','selectUsers')"
               style="margin-left: 580px">
        <div style="float: left;height: 40px;line-height: 40px;">��<%=1%>ҳ</div>
        <input name="next" type="button" value="��һҳ" onClick="subxg('individual','selectUsers')">
    </div>
    <%--        ����--%>
    <div class="jiti">
        <table border="1" cellspacing="0" cellpadding="0" border-collapse="collapse">
            <tr>
                <th>���</th>
                <th>���</th>
                <th>��������</th>
                <th>������</th>
                <th>�����ƺ�</th>
                <th>���״̬</th>
                <th>���帺����</th>
                <th>���帺������ϵ��ʽ</th>
                <th>����</th>
            </tr>
            <%--        �÷�ҳ�����ع�һ��--%>
            <% for (int i = 0; i < 9; i++) {%>
            <form method="post" id="individual">
                <tr>
                    <td><input type="text" readonly="readonly">${status.count}</td>
                    <td><input type="text" readonly="readonly"><%=co.get(i).getId()%>
                    </td>
                    <td><input type="text" readonly="readonly"><%=co.get(i).getCompanyName()%>
                    </td>
                    <td><input type="text" readonly="readonly"><%=co.get(i).getCollectiveProvance()%>
                    </td>
                    <td><input type="text" readonly="readonly"><%=co.get(i).getCollectiveTitle()%>
                    </td>
                    <td><input type="text" readonly="readonly"><%=co.get(i).getIsDeleteAdvance()%>
                    </td>
                    <td><input type="text" readonly="readonly"><%=co.get(i).getPrincipalName()%>
                    </td>
                    <td><input type="text" readonly="readonly"><%=co.get(i).getPrincipalPhone()%>
                    </td>
                    <input type="hidden" name="" value="<%=co.get(i).getId()%>">
                    <td class="btn">
                        <input type="button" onclick="changeVisibilitym();sub('individual','selectUsers')" value="���">
                        <input type="button" value="ɾ��">
                    </td>
                </tr>
            </form>
            <%}%>
        </table>
        <input name="prev" type="button" value="��һҳ" onClick="subsj('individual','selectUsers')"
               style="margin-left: 560px">
        <div style="float: left;height: 40px;line-height: 40px">��<%=1%>ҳ</div>
        <input name="next" type="button" value="��һҳ" onClick="subxj('individual','selectUsers')">
    </div>
    <%--�϶�����--%>
    <div class="cognizance">
        <div class="q">�Ƚ���Ϣ���</div>
        <%--        �Ƚ��������Сҳ��--%>
        <form action="/auditModelWorker">
            <div id="step1" style="margin-bottom: 30px">
                <div class="st1"><span>&emsp;�ƺ�:</span><input type="text" readonly="readonly" value=""></div>
                <div class="st2"><span>&emsp;����:</span><input type="text" readonly="readonly" value=""></div>
                <span>����:</span><textarea name="reviewModelWorker" class="mt" cols="25" rows="5"
                                          style="margin-top: 23px"></textarea>
            </div>
            <div class="step2">
                <input type="button" class="cc1" onclick="changeVisibilityh()" value="�ύ">
                <input type="button" class="cc2" onclick="changeVisibilityh()" value="ȡ��">
            </div>
        </form>
    </div>
</div>
</body>
</html>
