<%@ page contentType="text/html;charset=gb2312" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="gb2312">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="declare.css">
    <style>
        /*.r1 {*/
        /*    visibility: hidden;*/
        /*    display: none;*/
        /*}*/

        .o .r1 {
            font-family: "�����п�";
        }

        .o .r2 > span {
            font-family: "�����п�";
        }

        .d {
            visibility: hidden;
            display: none;
        }

        .xin {
            visibility: hidden;
            display: none;
        }

        /*.xj {*/
        /*    visibility: hidden;*/
        /*    display: none;*/
        /*}*/

        .colle {
            visibility: hidden;
            display: none;
        }
    </style>
    <script>

    </script>
</head>

<body>
<div class="o">
    <div class="on">
        <div style="float: right;">�˳�</div>
        <div style="float: right;margin-right: 30px;">��������</div>
        <div style="float: right;margin-right: 30px;">��ҳ</div>
    </div>
    <div class="t">
        <span>��Ϣ����</span><br>
        <input type="button" value="�Ƚ�������Ϣ����"><br>
        <input type="button" value="�Ƚ�������Ϣ����">
    </div>
    <div class="r1">
        <%--        ��ʼҳ��--%>
        <span class="s1">ZGH</span><br><br>
        <span class="s2">�ܹ����Ƚ�����ϵͳ</span>
    </div>
    <div class="r2">
        <div class="s11" style="float: left;">
            <span class="s1" style="margin-top: 30px;margin-left: 400px;">ZGH</span><br>
            <span class="s2" style="margin-left: 300px;">�ܹ����Ƚ�����ϵͳ</span><br>
        </div>
        <%--        �Ƚ����˱��--%>
        <div class="d">
            <div class="g">
                <input type="button" class="g1" value="�Ƚ�������Ϣ�걨">
                <input type="button" class="g2" value="�Ƚ�������Ϣɾ��">
                <input type="text" class="g3"><input type="button" class="g4" value="��ѯ">
            </div>
            <div class="ta">
                <table border="1" cellspacing="0" cellpadding="0">
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
                    <% for (int i = 0; i < 8; i++) {%>
                    <tr>
                        <td><input type="text"></td>
                        <td><input type="text"></td>
                        <td><input type="text"></td>
                        <td><input type="text"></td>
                        <td><input type="text"></td>
                        <td><input type="text"></td>
                        <td><input type="text"></td>
                        <td><input type="text"></td>
                        <td><input type="button" value="�޸�"></td>
                    </tr>
                    <%}%>
                </table>
            </div>
        </div>
        <%--        �Ƚ�����--%>
        <div class="xin">
            <h2>�Ƚ�������Ϣ�걨</h2>
            <div>
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
            <div class="sb"><span>&nbsp;�걨����:</span>
                <select>
                    <option value="volvo">Volvo</option>
                    <option value="saab">Saab</option>
                    <option value="opel">Opel</option>
                    <option value="audi">Audi</option>
                </select></div>
            <input type="button" class="cc1" value="�ύ">
            <input type="button" class="cc2" value="ȡ��">
        </div>
        <%--        �Ƚ�������--%>
        <div class="xj">
            <div class="g"><input type="button" class="g1" value="�Ƚ�������Ϣ�걨">
                <input type="button" class="g2" value="�Ƚ�������Ϣɾ��">
                <input type="text" class="g3"><input type="button" class="g4" value="��ѯ">
            </div>
            <div class="ta">
                <table border="1" cellspacing="0" cellpadding="0">
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
                    <% for (int i = 0; i < 8; i++) {%>
                    <tr>
                        <td><input type="text"></td>
                        <td><input type="text"></td>
                        <td><input type="text"></td>
                        <td><input type="text"></td>
                        <td><input type="text"></td>
                        <td><input type="text"></td>
                        <td><input type="text"></td>
                        <td><input type="text"></td>
                        <td><input type="button" value="�޸�"></td>
                    </tr>
                    <%}%>
                </table>
            </div>
        </div>
        <%--        �Ƚ�����--%>
        <div class="colle">
            <h2>�Ƚ�������Ϣ�걨</h2>
            <div>
                <span>����������:</span><input type="text">
                <span>��&nbsp;&nbsp;&nbsp;��:</span><input type="text">
            </div>
            <div>
                <span>�����˹���:</span><input type="text">
                <span>��&nbsp;&nbsp;&nbsp;ַ:</span><input type="text"><br>
            </div>
            <div>
                <span>��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��:</span><input type="text">
                <span>��&nbsp;&nbsp;&nbsp;��:</span><input type="text"><br>
            </div>
            <div class="sb"><span>&nbsp;�걨����:</span>
                <select>
                    <option value="volvo">Volvo</option>
                    <option value="saab">Saab</option>
                    <option value="opel">Opel</option>
                    <option value="audi">Audi</option>
                </select></div>
            <input type="button" class="cc1" value="�ύ">
            <input type="button" class="cc2" value="ȡ��">
        </div>
    </div>
</div>
</body>

</html>