<%@ page import="com.fcis.model.informationManagement.outstandingPersonDeclare.ModelWorker" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
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
    ModelWorker mo = (ModelWorker) session.getAttribute("allUser");
    //�����ĸ�������
%>
<html>
<head>
    <title>�Ƚ����˹���</title>
    <link rel="stylesheet" href="../static/css/Advanced_individual.css">
    <link rel="stylesheet" href="../static/js/chuandi.js">
    <style>
        .apply, .modify {
            display: none;
        }

        #step1, #step5 {
            display: block;
        }

        #step2, #step3, #step4, #step6, #step7, #step8 {
            display: none;
        }
    </style>
    <script type="text/javascript">
        function getnext(i) {
            var sz = new Array("step1", "step2", "step3", "step4");
            for (var j = 0; j < sz.length; j++) {
                if (i == sz[j]) {
                    document.getElementById(i).style.display = "block";
                } else {
                    document.getElementById(sz[j]).style.display = "none";
                }
            }
        }

        function getnext2(i) {
            var sz = new Array("step5", "step6", "step7", "step8");
            for (var j = 0; j < sz.length; j++) {
                if (i == sz[j]) {
                    document.getElementById(i).style.display = "block";
                } else {
                    document.getElementById(sz[j]).style.display = "none";
                }
            }
        }

        function changeVisibilityv() {
            $(".apply").css("display", "block");
            $(".modify").css("display", "none");
            $('#step1').css('display', 'block');
            $('#step2,#step3,#step4,#step5,#step6,#step7,#step8').css('display', 'none');
        }

        function changeVisibilitym() {
            $(".modify").css("display", "block");
            $(".apply").css("display", "none");
            $('#step5').css('display', 'block');
            $('#step1,#step2,#step3,#step4,#step6,#step7,#step8').css('display', 'none');
        }

        function cancel() {
            $(".apply").css("display", "none");
            $(".modify").css("display", "none");
            $(".modify").find('input[type=text],select,input[type=hidden]').each(function () {
                $(this).val('');
            });
            $(".modify").find('input[type=text],select,input[type=hidden]').each(function () {
                $(this).val('');
            });
        }

        function refer() {
            $(".apply").css("display", "none");
            $(".modify").css("display", "none");
            $(".apply").find('input[type=text],select,input[type=hidden]').each(function () {
                $(this).val('');
            });
            $(".modify").find('input[type=text],select,input[type=hidden]').each(function () {
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
            <th>�걨����</th>
            <th>�걨ʱ��</th>
            <th>�걨״̬</th>
            <th>�����</th>
            <th>���ʱ��</th>
            <th>����</th>
        </tr>
        <c:forEach items="<%=mo%>%" var="mo" varStatus="status">
            <td><input type="text" readonly="readonly">${status.count}</td>
            <td><input type="text" readonly="readonly"><%=mo.getInfo().getModelName()%>
            </td>
            <td><input type="text" readonly="readonly"><%=mo.getInfo()%>
            </td>
            <td><input type="text" readonly="readonly"><%=mo.getInfo()%>
            </td>
            <td><input type="text" readonly="readonly"><%=mo.getInfo()%>
            </td>
            <td><input type="text"></td>
            <td><input type="text"></td>
            <td class="btn"><input type="button" value="�鿴">
                <input type="button" onclick="changeVisibilitym()" value="�޸�">
                <input type="button" value="ɾ��"></td>
        </c:forEach>
        <input name="prev" type="button" value="��һҳ" onClick="">
        <input name="next" type="button" value="��һҳ" onClick="">
    </table>
    <%--���������--%>
    <div class="apply">
        <div class="q">�Ƚ�������Ϣ�걨</div>
        <%--        ��һ��Сҳ��--%>
        <div id="step1">
            <form id="one" method="post">
                <div class="st1"><span>ѡ����ģ�ƺ�:</span>
                    <select name="modelWorkerTitle">
                        <option value="nationalModelWorker">ȫ����ģ</option>
                        <option value="SichuanModelWorker">�Ĵ�ʡ��ģ</option>
                        <option value="national51ModelWorker">ȫ����һ�Ͷ�����</option>
                        <option value="Sichuan51ModelWorker">�Ĵ���һ�Ͷ�����</option>
                        <option value="other">�����Ͷ������ƺ�</option>
                    </select></div>
                <div class="st2"><span>ѡ����ģ����:</span>
                    <select name="modelWorkerTreatment">
                        <option value="enjoyNationalModelWorker">����ȫ���Ͷ�ģ������</option>
                        <option value="EnjoySichuanModelWorker">����ʡ�������Ͷ�ģ������</option>
                        <option value="cantModelWorkerTreatment">���������Ͷ�ģ������</option>
                        <option value="cantModelWorker">��������ʡ�������Ͷ�ģ������</option>
                    </select>
                </div>
                <input type="submit" class="cc1" onclick="getnext('step2');sub('one','modelWorkerDeclare');"
                       value="��һ��">
                <input type="button" class="cc2" onclick="cancel()" value="ȡ��">
            </form>
        </div>
        <%--        �ڶ���Сҳ��--%>
        <div id="step2">
            <form id="two" method="post">
                <div style="margin-top: 40px">
                    <span>��&emsp;&emsp;��:</span><input type="text" name="modelName">
                    <span>���֤��:</span><input type="text" name="ID" class="t1">
                </div>
                <div>
                    <span>��&emsp;&emsp;��:</span><input type="radio" class="rad" value="man" name="sex" checked="checked"
                                                       style="width: 20px;height: 20px;">��
                    <input type="radio" value="woman" class="rad" name="sex"
                           style="margin-left: 63px;width: 20px;height: 20px;">Ů
                    <span>��ϵ�绰:</span><input type="text" name="phone" class="t1">
                </div>
                <div>
                    <span>��&emsp;&emsp;��:</span>
                    <select name="nationality">
                        <option value="han_nationality">����</option>
                        <option value="ethnic_minority">��������</option>
                    </select><span>������λ:</span><input type="text" name="organization" class="t1">
                </div>
                <div>
                    <span>��������:</span><input type="date" name="born">
                    <span>ְλ����:</span>
                    <select style="width: 175px;" name="jobTitle">
                        <option value="nothing">��ҵ�쵼</option>
                        <option value="finance">�����쵼</option>
                        <option value="vice_president">��ҵԱ��</option>
                        <option value="president">���ظɲ�</option>
                        <option value="">��ҵ��λԱ��</option>
                        <option value="">ũҵũ��</option>
                    </select>
                </div>
                <div>
                    <span>�Ļ��̶�:</span>
                    <select name="education">
                        <option value="primary_school">Сѧ</option>
                        <option value="junior_middle_school">����</option>
                        <option value="high_school">����</option>
                        <option value="specialty">ר��</option>
                        <option value="undergraduate">����</option>
                        <option value="master">˶ʿ</option>
                        <option value="doctor">��ʿ</option>
                    </select><span>��óƺ�ʱ��:</span><input type="date" name="getModelWorkerTitleTime">
                </div>
                <div>
                    <span>������ò:</span>
                    <select name="politicalState">
                        <option value="masses">Ⱥ��</option>
                        <option value="league_member">��Ա</option>
                        <option value="party_member">��Ա</option>
                    </select><span>����ƺŵ�λ:</span><input type="text" name="awardingUnit" class="t1"><br>
                </div>
                <input type="button" class="cc1" onclick="getnext('step1')" value="��һ��">
                <input type="submit" class="cc2" onclick="getnext('step3');sub('two','next1');" value="��һ��">
                <input type="button" class="cc3" onclick="cancel()" value="ȡ��">
            </form>
        </div>
        <%--        ������Сҳ��--%>
        <div id="step3">
            <form id="three">
                <div style="margin-top: 23px;"><span>���彡��״��:</span>
                    <input type="radio" name="stateofHealth" class="rad" value="yse" checked="checked"
                           style="margin-left: 60px;width: 20px;height: 20px;">����
                    <input type="radio" value="no" name="stateofHealth" class="rad"
                           style="margin-left: 10px;width: 20px;height: 20px;">������
                </div>
                <div><span>�Ƿ��ѻ�������ƺ�:</span><input type="radio" name="modelWorkerTitle" checked="checked" class="rad" value="1"
                                                   style="width: 20px;height: 20px;">��
                    <input type="radio" value="0" name="modelWorkerTitle" class="rad"
                           style="margin-left: 10px; width: 20px;height: 20px;">��
                </div>
                <div><span>��ͥ���:</span>
                    <select name="stateofFamily">
                        <option value="not_difficult">������</option>
                        <option value="first_level_difficulty">һ������</option>
                        <option value="two_level_difficulty">��������</option>
                        <option value="three_level_difficulty">��������</option>
                    </select></div>
                <div><span>&emsp;&emsp;��ҵ���:</span>
                    <select name="stateofJob">
                        <option value="retire">����</option>
                        <option value="on_duty">�ڸ�</option>
                        <option value="liberal_professions">����ְҵ</option>
                    </select></div>
                <div><span style="width: 145px;">��Ҫͻ���¼�:</span><input type="text" name="outstandingDeeds"></div>
                <input type="button" class="cc1" onclick="getnext('step2')" value="��һ��">
                <input type="submit" class="cc2" onclick="getnext('step4');sub('three','next2');" value="��һ��">
                <input type="button" class="cc3" onclick="cancel()" value="ȡ��">
            </form>
        </div>
        <%--        ���ĸ�Сҳ��--%>
        <div id="step4">
            <form id="four" method="post">
                <div class="one">�����϶�����</div>
                <div><span>���赥λ:</span><input class="te1" type="text" name="awardingUnit"></div>
                <div><span>����ʱ��:</span><input class="te1" type="date" name="awardingTime"></div>
                <div><span class="two">���þ����ļ���:</span><input type="text" name="recognitionFileName" style="width: 200px;"></div>
                <div><span class="three">�ļ����ĺ�:</span><input type="text" name="symbol" style="width: 200px;"></div>
                <div><span>���ĵ�λ:</span><input class="te1" type="text" name="recognitionUnit"></div>
                <div><span>��������:</span><input class="te1" type="date" name="recognitionTime"></div>
                <div><span class="four">�ϴ��϶�����:</span><input type="file" style="width: 160px; border: none;" name="file"></div>
                <input type="button" class="cc1" onclick="getnext('step3')" style="margin-top: 10px;" value="��һ��">
                <input type="submit" class="cc2" onclick="refer();sub('four','next3');" value="�ύ">
                <input type="button" class="cc3" onclick="cancel()" value="ȡ��">
            </form>
        </div>
    </div>
    <%--    �޸�����--%>
    <div class="modify">
        <div class="q">�Ƚ�������Ϣ�޸�</div>
        <%--        ��һ��Сҳ��--%>
        <div id="step5">
            <form id="five" method="post">
                <div class="st1"><span>ѡ����ģ�ƺ�:</span>
                    <select name="modelWorkerTitle">
                        <option value="nationalModelWorker">ȫ����ģ</option>
                        <option value="SichuanModelWorker">�Ĵ�ʡ��ģ</option>
                        <option value="national51ModelWorker">ȫ����һ�Ͷ�����</option>
                        <option value="Sichuan51ModelWorker">�Ĵ���һ�Ͷ�����</option>
                        <option value="other">�����Ͷ������ƺ�</option>
                    </select></div>
                <div class="st2"><span>ѡ����ģ����:</span>
                    <select name="modelWorkerTreatment">
                        <option value="enjoyNationalModelWorker">����ȫ���Ͷ�ģ������</option>
                        <option value="EnjoySichuanModelWorker">����ʡ�������Ͷ�ģ������</option>
                        <option value="cantModelWorkerTreatment">���������Ͷ�ģ������</option>
                        <option value="cantModelWorker">��������ʡ�������Ͷ�ģ������</option>
                    </select>
                </div>
                <input type="button" class="cc1" onclick="getnext2('step6');sub('five','modelWorkerDeclare');"
                       value="��һ��">
                <input type="button" class="cc2" onclick="cancel()" value="ȡ��">
            </form>
        </div>
        <%--        �ڶ���Сҳ��--%>
        <div id="step6">
            <form id="six" method="post">
                <div style="margin-top: 40px">
                    <span>��&emsp;&emsp;��:</span><input type="text">
                    <span>���֤��:</span><input type="text" class="t1">
                </div>
                <div>
                    <span>��&emsp;&emsp;��:</span><input type="radio" class="rad" value="man" name="sex" checked="checked"
                                                       style="width: 20px;height: 20px">��
                    <input type="radio" value="woman" class="rad" name="sex"
                           style="margin-left: 63px;width: 20px;height: 20px">Ů
                    <span>��ϵ�绰:</span><input type="text" class="t1">
                </div>
                <div>
                    <span>��&emsp;&emsp;��:</span>
                    <select>
                        <option value="han_nationality">����</option>
                        <option value="ethnic_minority">��������</option>
                    </select><span>������λ:</span><input type="text" class="t1">
                </div>
                <div>
                    <span>��������:</span><input type="date">
                    <span>ְ&emsp;&emsp;λ:</span>
                    <select style="width: 175px;">
                        <option value="junior_middle_school">��</option>
                        <option value="high_school">����</option>
                        <option value="undergraduate">���᳤</option>
                        <option value="master">�᳤</option>
                    </select>
                </div>
                <div>
                    <span>��������:</span><input type="date">
                    <span>ְ&emsp;&emsp;λ:</span>
                    <select style="width: 175px;">
                        <option value="nothing">��</option>
                        <option value="finance">����</option>
                        <option value="vice_president">���᳤</option>
                        <option value="president">�᳤</option>
                    </select>
                </div>
                <div>
                    <span>�Ļ��̶�:</span>
                    <select>
                        <option value="primary_school">Сѧ</option>
                        <option value="junior_middle_school">����</option>
                        <option value="high_school">����</option>
                        <option value="specialty">ר��</option>
                        <option value="undergraduate">����</option>
                        <option value="master">˶ʿ</option>
                        <option value="doctor">��ʿ</option>
                    </select><span>��óƺ�ʱ��:</span><input type="date">
                </div>
                <input type="button" class="cc1" onclick="getnext2('step5')" value="��һ��">
                <input type="button" class="cc2" onclick="getnext2('step7');sub('six','next1')" value="��һ��">
                <input type="button" class="cc3" onclick="cancel()" value="ȡ��">
            </form>
        </div>
        <%--        ������Сҳ��--%>
        <div id="step7">
            <form id="seven">
                <div style="margin-top: 23px;"><span>���彡��״��:</span>
                    <input type="radio" name="healthy" class="rad" value="yse" checked="checked"
                           style="margin-left: 60px;width: 20px;height: 20px;">����
                    <input type="radio" value="no" name="healthy" class="rad"
                           style="margin-left: 10px;width: 20px;height: 20px;">������
                </div>
                <div><span>�Ƿ��ѻ�������ƺ�:</span><input type="radio" name="honor" checked="checked" class="rad" value="yse"
                                                   style="width: 20px;height: 20px;">��
                    <input type="radio" value="no" name="honor" class="rad"
                           style="margin-left: 10px; width: 20px;height: 20px;">��
                </div>
                <div><span>��ͥ�������:</span>
                    <select>
                        <option value="not_difficult">������</option>
                        <option value="first_level_difficulty">һ������</option>
                        <option value="two_level_difficulty">��������</option>
                        <option value="three_level_difficulty">��������</option>
                    </select></div>
                <div><span>&emsp;&emsp;��ҵ���:</span>
                    <select>
                        <option value="be_unemployed">��ҵ</option>
                        <option value="on_duty">�ڸ�</option>
                        <option value="liberal_professions">����ְҵ</option>
                    </select></div>
                <div><span style="width: 145px;">��Ҫͻ���¼�:</span><input type="text"></div>
                <input type="button" class="cc1" onclick="getnext2('step6')" value="��һ��">
                <input type="button" class="cc2" onclick="getnext2('step8');sub('seven','next2');" value="��һ��">
                <input type="button" class="cc3" onclick="cancel()" value="ȡ��">
            </form>
        </div>
        <%--        ���ĸ�Сҳ��--%>
        <div id="step8">
            <form id="eight" method="post">
                <div class="one">�����϶�����</div>
                <div><span>���赥λ:</span><input class="te1" type="text"></div>
                <div><span>����ʱ��:</span><input class="te1" type="date"></div>
                <div><span class="two">���þ����ļ���:</span><input type="text" style="width: 200px;"></div>
                <div><span class="three">�ļ����ĺ�:</span><input type="text" style="width: 200px;"></div>
                <div><span>���ĵ�λ:</span><input class="te1" type="text"></div>
                <div><span>��������:</span><input class="te1" type="date"></div>
                <div><span class="four">�ϴ��϶�����:</span><input type="file" style="width: 160px; border: none;"></div>
                <input type="button" class="cc1" onclick="getnext2('step7')" style="margin-top: 10px;" value="��һ��">
                <input type="button" class="cc2" onclick="refer();sub('eight','next3');" value="�ύ">
                <input type="button" class="cc3" onclick="cancel()" value="ȡ��">
            </form>
        </div>
    </div>
</div>
</body>
</html>
