<%--
  Created by IntelliJ IDEA.
  User: liu
  Date: 2021/7/22
  Time: 21:28
  To change this template use File | Settings | File Templates.
  传递  接收
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<html>
<head>
    <title>先进集体管理</title>
    <link rel="stylesheet" href="/static/css/advanced_group.css">
    <style>
        /*将申报和修改页面进行隐藏*/
        .apply {
            display: none;
        }

        .modify {
            display: none;
        }
    </style>
    <script type="text/javascript">
        function changeVisibilityv() {
            //申报按钮的实现
            $(".apply").css("display", "block");
            $(".modify").css("display", "none");

        }

        function changeVisibilitym() {
            //修改按钮的实现
            $(".modify").css("display", "block");
            $(".apply").css("display", "none");
        }

        function changeVisibilityh() {
            //取消的方法
            $(".apply").css("display", "none");
            $(".modify").css("display", "none");
            $(".apply").find('input[type=text],select,input[type=hidden]').each(function () {
                $(this).val('');
            });
        }

        function submit() {
            //提交所使用的方法
            $(".apply").css("display", "none");
            $(".modify").css("display", "none");
            //在这可以写一个跳转，现将数据给数据库

            refresh();
        }

        function refresh() {
            //逐条清空表单的数据
            $(".apply").find('input[type=text],select,input[type=hidden]').each(function () {
                $(this).val('');
            });
        }
    </script>
</head>
<body>
<meta name=”viewport” content=”width=device-width, initial-scale=1″/>
<%--    头部制作--%>
<div class="header">
    <img src="/static/img/logo.jpg">
    <div><p>总工会先进个人和先进集体</p><br>
        <p class="p1">综合信息管理系统</p></div>
</div>
<%--bars部分制作--%>
<div class="bars">
    <div class="bar">
        <div style="margin-left: 80px" onclick="window.location.href='home_page.jsp'">首页</div>
        <div onclick="window.location.href='Advanced_individual.jsp'" target="_blank">先进个人信息管理</div>
        <div onclick="window.location.href='advanced_group.jsp'">先进集体信息管理</div>
        <div onclick="window.location.href='cognizance_examine.jsp'">认定与审核</div>
        <div onclick="window.location.href='statistics.jsp'">信息统计</div>
        <div onclick="window.location.href='import_export.jsp'">导入导出</div>
    </div>
    <div class="ba">
        <div onclick="window.location.href='logon.jsp'">退出</div>
        <div onclick="window.location.href='logon.jsp'">登录</div>
        <div onclick="window.location.href='personal_center.jsp'">个人中心</div>
    </div>
</div>
<%--表格上方制作--%>
<div class="formt">
    <div class="advanced_people">先进集体信息</div>
    <div class="declare" onclick="changeVisibilityv()">申报</div>
    <div class="query"><input type="button" value="查询"></div>
    <input type="text">
</div>
<br>
<br>
<hr style="margin-top: 4px;margin-bottom: 30px">
<%--表格制造--%>
<div class="ta">
    <table border="1" cellspacing="0" cellpadding="0" border-collapse="collapse">
        <tr>
            <th>序号</th>
            <th>工号</th>
            <th>申报人姓名</th>
            <th>申报类型</th>
            <th>申报时间</th>
            <th>审核状态</th>
            <th>审核人</th>
            <th>审核时间</th>
            <th>集体负责人</th>
            <th>操作</th>
        </tr>
        <%--        用分页方法重构一次--%>
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
            <td class="btn"><input type="button" value="查看">
                <input type="button" onclick="changeVisibilitym()" value="修改">
                <input type="button" value="删除"></td>
        </tr>
        <%}%>
    </table>
    <%--申请表制作--%>
    <div class="apply">
        <form action="/declareAdvanceCollective">
            <div class="q">先进集体信息申报</div>
            <%--        第一个小页面--%>
            <div id="step1" style="margin-bottom: 30px">
                <div class="st1"><span>&nbsp;选择劳模称号:</span>
                    <select name="modelWorkerTitle">
                        <option value="nationalModelWorker">全国劳模</option>
                        <option value="SichuanModelWorker">四川省劳模</option>
                        <option value="national51ModelWorker">全国五一劳动奖章</option>
                        <option value="Sichuan51ModelWorker">四川五一劳动奖章</option>
                        <option value="other">其他劳动荣誉称号</option>
                    </select></div>
                <div class="st2"><span>&nbsp;选择劳模待遇:</span>
                    <select name="modelWorkerTreatment">
                        <option value="enjoyNationalModelWorker">享受全国劳动模范待遇</option>
                        <option value="EnjoySichuanModelWorker">享受省、部级劳动模范待遇</option>
                        <option value="cantModelWorkerTreatment">不能享受劳动模范待遇</option>
                        <option value="cantModelWorker">不能享受省、部级劳动模范待遇</option>
                    </select>
                </div>
            </div>
            <%--        <br>--%>
            <hr>
            <%--        第二个小页面--%>
            <div id="step2">
                <div style="margin-top: 30px">
                    <span>所属市州产业:</span><input type="text">
                    <span>单位名称:</span><input type="text">
                </div>
                <div>
                    <span>负责人名称&nbsp;&nbsp;&nbsp;:</span><input type="text">
                    <span>联系方式:</span><input type="text"><br>
                </div>
                <div>
                    <span>主要突出事迹:</span><input type="text">
                </div>
            </div>
            <div class="step3">
                <input type="submit" class="cc1" onclick="submit()" value="提交">
                <input type="button" class="cc2" onclick="changeVisibilityh()" value="取消">
            </div>
        </form>
    </div>
    <%--修改制作--%>
    <form action="/declareAdvanceCollective">
        <div class="modify">
            <div class="q">先进集体信息修改</div>
            <%--        第一个小页面--%>
            <div id="step1" style="margin-bottom: 30px">
                <div class="st1"><span>&nbsp;选择劳模称号:</span>
                    <select name="modelWorkerTitle">
                        <option value="nationalModelWorker">全国劳模</option>
                        <option value="SichuanModelWorker">四川省劳模</option>
                        <option value="national51ModelWorker">全国五一劳动奖章</option>
                        <option value="Sichuan51ModelWorker">四川五一劳动奖章</option>
                        <option value="other">其他劳动荣誉称号</option>
                    </select></div>
                <div class="st2"><span>&nbsp;选择劳模待遇:</span>
                    <select name="modelWorkerTreatment">
                        <option value="enjoyNationalModelWorker">享受全国劳动模范待遇</option>
                        <option value="EnjoySichuanModelWorker">享受省、部级劳动模范待遇</option>
                        <option value="cantModelWorkerTreatment">不能享受劳动模范待遇</option>
                        <option value="cantModelWorker">不能享受省、部级劳动模范待遇</option>
                    </select>
                </div>
            </div>
            <%--        <br>--%>
            <hr>
            <%--        第二个小页面--%>
            <div id="step2">
                <div style="margin-top: 30px">
                    <span>所属市州产业:</span><input type="text">
                    <span>单位名称:</span><input type="text">
                </div>
                <div>
                    <span>负责人名称&nbsp;&nbsp;&nbsp;:</span><input type="text">
                    <span>联系方式:</span><input type="text"><br>
                </div>
                <div>
                    <span>主要突出事迹:</span><input type="text">
                </div>
            </div>
            <div class="step3">
                <input type="button" class="cc1" onclick="submit()" value="提交">
                <input type="button" class="cc2" onclick="changeVisibilityh()" value="取消">
            </div>
        </div>
    </form>
</div>
</body>
</html>
