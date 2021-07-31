<%@ page import="com.fcis.model.informationManagement.advancedCollective.CollectiveInfo" %>
<%@ page import="java.util.List" %><%--
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
    List<CollectiveInfo> co = (List<CollectiveInfo>) session.getAttribute("allCollectives");
    int pagel = 1;
%>
<html>
<head>
    <title>�Ƚ��������</title>
    <link rel="stylesheet" href="../static/css/advanced_group.css">
    <link rel="stylesheet" href="../static/js/chuandi.js">
    <style>
        /*���걨���޸�ҳ���������*/
        .apply {
            display: none;
        }

        .modify {
            display: none;
        }
    </style>
    <script type="text/javascript">
        function subs(ID, addrs) {
            <% if(pagel==1) {%>
            alert("������Сҳ��")
            <% }else {%>
            $.ajax({
                cache: true,
                type: "POST",
                url: addrs,
                data: <%=pagel-1%>,// ���formid
                async: false,
                error: function (request) {
                    alert("Connection error:" + request.error);
                },
            });
            <%}%>
        }

        function subx(ID, addrs) {
            $.ajax({
                cache: true,
                type: "POST",
                url: addrs,
                data: <%=pagel+1%>,// ���formid
                async: false,
                error: function (request) {
                    alert("Connection error:" + request.error);
                },
            });
        }

        function changeVisibilityv() {
            //�걨��ť��ʵ��
            $(".apply").css("display", "block");
            $(".modify").css("display", "none");

        }

        function changeVisibilitym() {
            //�޸İ�ť��ʵ��
            $(".modify").css("display", "block");
            $(".apply").css("display", "none");
        }

        function changeVisibilityh() {
            //ȡ���ķ���
            $(".apply").css("display", "none");
            $(".modify").css("display", "none");
            $(".apply").find('input[type=text],select,input[type=hidden]').each(function () {
                $(this).val('');
            });
        }

        function submit() {
            //�ύ��ʹ�õķ���
            $(".apply").css("display", "none");
            $(".modify").css("display", "none");
            //�������дһ����ת���ֽ����ݸ����ݿ�

            refresh();
        }

        function refresh() {
            //������ձ�������
            $(".apply").find('input[type=text],select,input[type=hidden]').each(function () {
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
    <table border="1" cellspacing="0" cellpadding="0" border-collapse="collapse" style="margin-left: 130px">
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
        <% for (int i = 0; i < 10; i++) {%>
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
                <td class="btn"><input type="button" onclick="sub('individual','selectUsers')" value="�鿴">
                    <input type="button" onclick="changeVisibilitym();sub('individual','selectUsers')" value="�޸�">
                    <input type="button" value="ɾ��"></td>
            </tr>
        </form>
        <%}%>
        <input name="prev" type="button" value="��һҳ" onClick="subs('individual','selectUsers')"
               style="margin-left: 560px">
        <div style="float: left;height: 40px;line-height: 40px">��<%=pagel%>ҳ</div>
        <input name="next" type="button" value="��һҳ" onClick="subx('individual','selectUsers')">
    </table>
    <%--���������--%>
    <div class="apply">
        <form action="/declareAdvanceCollective">
            <div class="q">�Ƚ�������Ϣ�걨</div>
            <%--        ��һ��Сҳ��--%>
            <div id="step1" style="margin-bottom: 30px">
                <div class="st1"><span>&nbsp;ѡ�������ƺ�:</span>
                    <select name="collectiveTitle">
                        <option value="nationalModelWorker">ȫ����һ�Ͷ��񽱵�λ</option>
                        <option value="SichuanModelWorker">�Ĵ�ʡ��һ�Ͷ��񽱵�λ</option>
                        <option value="national51ModelWorker">ȫ�������ȷ��</option>
                        <option value="Sichuan51ModelWorker">�Ĵ�ʡ�����ȷ��</option>
                    </select></div>
            </div>
            <%--        <br>--%>
            <hr>
            <%--        �ڶ���Сҳ��--%>
            <div id="step2">
                <div style="margin-top: 30px">
                    <span>�������ݲ�ҵ:</span><input type="text" name="collectiveProvance">
                    <span>��λ����:</span><input type="text" name="companyName">
                </div>
                <div>
                    <span>����������&nbsp;&nbsp;&nbsp;:</span><input type="text" name="principalName">
                    <span>��ϵ��ʽ:</span><input type="text" name="principalPhone"><br>
                </div>
                <div>
                    <span>��Ҫͻ���¼�:</span><input type="text" name="collectiveOutstanding">
                    <div><span>�ϴ��϶�����:</span><input type="file" name="advance_file" style="border: none"></div>
                </div>
            </div>
            <div class="step3">
                <input type="submit" class="cc1" onclick="submit()" value="�ύ">
                <input type="button" class="cc2" onclick="changeVisibilityh()" value="ȡ��">
            </div>
        </form>
    </div>
    <%--�޸�����--%>
    <form action="/declareAdvanceCollective">
        <div class="modify">
            <div class="q">�Ƚ�������Ϣ�޸�</div>
            <%--        ��һ��Сҳ��--%>
            <div id="step1" style="margin-bottom: 30px">
                <div class="st1"><span>&nbsp;ѡ�������ƺ�:</span>
                    <select name="modelWorkerTitle">
                        <option value="nationalModelWorker">ȫ����һ�Ͷ��񽱵�λ</option>
                        <option value="SichuanModelWorker">�Ĵ�ʡ��һ�Ͷ��񽱵�λ</option>
                        <option value="national51ModelWorker">ȫ�������ȷ��</option>
                        <option value="Sichuan51ModelWorker">�Ĵ�ʡ�����ȷ��</option>
                    </select></div>
            </div>
            <%--        <br>--%>
            <hr>
            <%--        �ڶ���Сҳ��--%>
            <div id="step2">
                <div style="margin-top: 30px">
                    <span>�������ݲ�ҵ:</span><input type="text">
                    <span>��λ����:</span><input type="text">
                </div>
                <div>
                    <span>����������&nbsp;&nbsp;&nbsp;:</span><input type="text">
                    <span>��ϵ��ʽ:</span><input type="text"><br>
                </div>
                <div>
                    <span>��Ҫͻ���¼�:</span><input type="text">
                    <div><span>�ϴ��϶�����:</span><input type="file" style="border: none"></div>
                </div>
            </div>
            <div class="step3">
                <input type="button" class="cc1" onclick="submit()" value="�ύ">
                <input type="button" class="cc2" onclick="changeVisibilityh()" value="ȡ��">
            </div>
        </div>
    </form>
</div>
</body>
</html>
