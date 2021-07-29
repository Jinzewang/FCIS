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
<html>
<head>
    <title>�Ƚ����˹���</title>
    <link rel="stylesheet" href="/static/css/Advanced_individual.css">
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
    <%--���������--%>
    <div class="apply">
        <div class="q">�Ƚ�������Ϣ�걨</div>
        <%--        ��һ��Сҳ��--%>
        <form action="/modelWorkerDeclare">
            <div id="step1">
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
                <input type="submit" class="cc1" onclick="getnext('step2')" value="��һ��">
                <input type="button" class="cc2" onclick="cancel()" value="ȡ��">
            </div>
        </form>

        <%--        �ڶ���Сҳ��--%>
        <form action="/next1">
            <div id="step2">
                <div style="margin-top: 40px">
                    <span>��&emsp;&emsp;��:</span><input type="text">
                    <span>���֤��:</span><input type="text" class="t1">
                </div>
                <div>
                    <span>��&emsp;&emsp;��:</span><input type="radio" class="rad" value="man" name="sex" checked="checked"
                                                       style="width: 20px;height: 20px;">��
                    <input type="radio" value="woman" class="rad" name="sex"
                           style="margin-left: 63px;width: 20px;height: 20px;">Ů
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
                <div>
                    <span>������ò:</span>
                    <select>
                        <option value="masses">Ⱥ��</option>
                        <option value="league_member">��Ա</option>
                        <option value="party_member">��Ա</option>
                    </select><span>���赥λ:</span><input type="text" class="t1"><br>
                </div>
                <input type="button" class="cc1" onclick="getnext('step1')" value="��һ��">
                <input type="submit" class="cc2" onclick="getnext('step3')" value="��һ��">
                <input type="button" class="cc3" onclick="cancel()" value="ȡ��">
            </div>
        </form>
        <%--        ������Сҳ��--%>
        <form action="/next2">
            <div id="step3">
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
                        <option value="retire">����</option>
                        <option value="on_duty">�ڸ�</option>
                        <option value="liberal_professions">����ְҵ</option>
                    </select></div>
                <div><span style="width: 145px;">��Ҫͻ���¼�:</span><input type="text"></div>
                <input type="button" class="cc1" onclick="getnext('step2')" value="��һ��">
                <input type="submit" class="cc2" onclick="getnext('step4')" value="��һ��">
                <input type="button" class="cc3" onclick="cancel()" value="ȡ��">
            </div>
        </form>
        <%--        ���ĸ�Сҳ��--%>
        <form action="/next3">
            <div id="step4">
                <div><span>�����϶�����:</span><input type="text" style="width: 160px;"></div>
                <div><span>���赥λ:</span><input class="te1" type="text"></div>
                <div><span>����ʱ��:</span><input class="te1" type="date"></div>
                <div><span>���þ����ļ���:</span><input type="text"></div>
                <div><span>�ļ����ĺ�:</span><input type="text" style="width: 180px;"></div>
                <div><span>���ĵ�λ:</span><input class="te1" type="text"></div>
                <div><span>��������:</span><input class="te1" type="date"></div>
                <div><span>�ϴ��϶�����:</span><input type="file" style="width: 160px; border: none;"></div>
                <input type="button" class="cc1" onclick="getnext('step3')" style="margin-top: 10px;" value="��һ��">
                <input type="submit" class="cc2" onclick="refer()" value="�ύ">
                <input type="button" class="cc3" onclick="cancel()" value="ȡ��">
            </div>
        </form>
    </div>
    <%--    �޸�����--%>
    <div class="modify">
        <div class="q">�Ƚ�������Ϣ�޸�</div>
        <%--        ��һ��Сҳ��--%>
        <form action="/modelWorkerDeclare">
            <div id="step5">
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
                <input type="button" class="cc1" onclick="getnext2('step6')" value="��һ��">
                <input type="button" class="cc2" onclick="cancel()" value="ȡ��">
            </div>
        </form>
        <%--        �ڶ���Сҳ��--%>
        <form action="/next1">
            <div id="step6">
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
                <input type="button" class="cc2" onclick="getnext2('step7')" value="��һ��">
                <input type="button" class="cc3" onclick="cancel()" value="ȡ��">
            </div>
        </form>
        <%--        ������Сҳ��--%>
        <form action="/next2">
            <div id="step7">
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
                <input type="button" class="cc2" onclick="getnext2('step8')" value="��һ��">
                <input type="button" class="cc3" onclick="cancel()" value="ȡ��">
            </div>
        </form>
        <%--        ���ĸ�Сҳ��--%>
        <form action="/next3">
            <div id="step8">
                <div><span>�����϶�����:</span><input type="text" style="width: 160px;"></div>
                <div><span>���赥λ:</span><input class="te1" type="text"></div>
                <div><span>����ʱ��:</span><input class="te1" type="date"></div>
                <div><span>���þ����ļ���:</span><input type="text"></div>
                <div><span>�ļ����ĺ�:</span><input type="text" style="width: 180px;"></div>
                <div><span>���ĵ�λ:</span><input class="te1" type="text"></div>
                <div><span>��������:</span><input class="te1" type="date"></div>
                <div><span>�ϴ��϶�����:</span><input type="file" style="width: 160px; border: none;"></div>
                <input type="button" class="cc1" onclick="getnext2('step7')" style="margin-top: 10px;" value="��һ��">
                <input type="button" class="cc2" onclick="refer()" value="�ύ">
                <input type="button" class="cc3" onclick="cancel()" value="ȡ��">
            </div>
        </form>
    </div>
</div>
</body>
</html>
