<%@ page import="com.fcis.model.informationManagement.outstandingPersonDeclare.ModelWorker" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<%
    ModelWorker mo = (ModelWorker) session.getAttribute("allUser");
    //接收四个类数据
%>
<html>
<head>
    <title>先进个人管理</title>
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
    <div class="advanced_people">先进个人信息</div>
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
            <th>姓名</th>
            <th>申报类型</th>
            <th>申报时间</th>
            <th>申报状态</th>
            <th>审核人</th>
            <th>审核时间</th>
            <th>操作</th>
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
            <td class="btn"><input type="button" value="查看">
                <input type="button" onclick="changeVisibilitym()" value="修改">
                <input type="button" value="删除"></td>
        </c:forEach>
        <input name="prev" type="button" value="上一页" onClick="">
        <input name="next" type="button" value="下一页" onClick="">
    </table>
    <%--申请表制作--%>
    <div class="apply">
        <div class="q">先进个人信息申报</div>
        <%--        第一个小页面--%>
        <div id="step1">
            <form id="one" method="post">
                <div class="st1"><span>选择劳模称号:</span>
                    <select name="modelWorkerTitle">
                        <option value="nationalModelWorker">全国劳模</option>
                        <option value="SichuanModelWorker">四川省劳模</option>
                        <option value="national51ModelWorker">全国五一劳动奖章</option>
                        <option value="Sichuan51ModelWorker">四川五一劳动奖章</option>
                        <option value="other">其他劳动荣誉称号</option>
                    </select></div>
                <div class="st2"><span>选择劳模待遇:</span>
                    <select name="modelWorkerTreatment">
                        <option value="enjoyNationalModelWorker">享受全国劳动模范待遇</option>
                        <option value="EnjoySichuanModelWorker">享受省、部级劳动模范待遇</option>
                        <option value="cantModelWorkerTreatment">不能享受劳动模范待遇</option>
                        <option value="cantModelWorker">不能享受省、部级劳动模范待遇</option>
                    </select>
                </div>
                <input type="submit" class="cc1" onclick="getnext('step2');sub('one','modelWorkerDeclare');"
                       value="下一步">
                <input type="button" class="cc2" onclick="cancel()" value="取消">
            </form>
        </div>
        <%--        第二个小页面--%>
        <div id="step2">
            <form id="two" method="post">
                <div style="margin-top: 40px">
                    <span>姓&emsp;&emsp;名:</span><input type="text" name="modelName">
                    <span>身份证号:</span><input type="text" name="ID" class="t1">
                </div>
                <div>
                    <span>性&emsp;&emsp;别:</span><input type="radio" class="rad" value="man" name="sex" checked="checked"
                                                       style="width: 20px;height: 20px;">男
                    <input type="radio" value="woman" class="rad" name="sex"
                           style="margin-left: 63px;width: 20px;height: 20px;">女
                    <span>联系电话:</span><input type="text" name="phone" class="t1">
                </div>
                <div>
                    <span>民&emsp;&emsp;族:</span>
                    <select name="nationality">
                        <option value="han_nationality">汉族</option>
                        <option value="ethnic_minority">少数民族</option>
                    </select><span>工作单位:</span><input type="text" name="organization" class="t1">
                </div>
                <div>
                    <span>出生年月:</span><input type="date" name="born">
                    <span>职位类型:</span>
                    <select style="width: 175px;" name="jobTitle">
                        <option value="nothing">企业领导</option>
                        <option value="finance">机关领导</option>
                        <option value="vice_president">企业员工</option>
                        <option value="president">机关干部</option>
                        <option value="">事业单位员工</option>
                        <option value="">农业农村</option>
                    </select>
                </div>
                <div>
                    <span>文化程度:</span>
                    <select name="education">
                        <option value="primary_school">小学</option>
                        <option value="junior_middle_school">初中</option>
                        <option value="high_school">高中</option>
                        <option value="specialty">专科</option>
                        <option value="undergraduate">本科</option>
                        <option value="master">硕士</option>
                        <option value="doctor">博士</option>
                    </select><span>获得称号时间:</span><input type="date" name="getModelWorkerTitleTime">
                </div>
                <div>
                    <span>政治面貌:</span>
                    <select name="politicalState">
                        <option value="masses">群众</option>
                        <option value="league_member">团员</option>
                        <option value="party_member">党员</option>
                    </select><span>授予称号单位:</span><input type="text" name="awardingUnit" class="t1"><br>
                </div>
                <input type="button" class="cc1" onclick="getnext('step1')" value="上一步">
                <input type="submit" class="cc2" onclick="getnext('step3');sub('two','next1');" value="下一步">
                <input type="button" class="cc3" onclick="cancel()" value="取消">
            </form>
        </div>
        <%--        第三个小页面--%>
        <div id="step3">
            <form id="three">
                <div style="margin-top: 23px;"><span>身体健康状况:</span>
                    <input type="radio" name="stateofHealth" class="rad" value="yse" checked="checked"
                           style="margin-left: 60px;width: 20px;height: 20px;">健康
                    <input type="radio" value="no" name="stateofHealth" class="rad"
                           style="margin-left: 10px;width: 20px;height: 20px;">不健康
                </div>
                <div><span>是否已获得荣誉称号:</span><input type="radio" name="modelWorkerTitle" checked="checked" class="rad" value="1"
                                                   style="width: 20px;height: 20px;">是
                    <input type="radio" value="0" name="modelWorkerTitle" class="rad"
                           style="margin-left: 10px; width: 20px;height: 20px;">否
                </div>
                <div><span>家庭情况:</span>
                    <select name="stateofFamily">
                        <option value="not_difficult">不困难</option>
                        <option value="first_level_difficulty">一级困难</option>
                        <option value="two_level_difficulty">二级困难</option>
                        <option value="three_level_difficulty">三级困难</option>
                    </select></div>
                <div><span>&emsp;&emsp;就业情况:</span>
                    <select name="stateofJob">
                        <option value="retire">退休</option>
                        <option value="on_duty">在岗</option>
                        <option value="liberal_professions">自由职业</option>
                    </select></div>
                <div><span style="width: 145px;">主要突出事迹:</span><input type="text" name="outstandingDeeds"></div>
                <input type="button" class="cc1" onclick="getnext('step2')" value="上一步">
                <input type="submit" class="cc2" onclick="getnext('step4');sub('three','next2');" value="下一步">
                <input type="button" class="cc3" onclick="cancel()" value="取消">
            </form>
        </div>
        <%--        第四个小页面--%>
        <div id="step4">
            <form id="four" method="post">
                <div class="one">输入认定材料</div>
                <div><span>授予单位:</span><input class="te1" type="text" name="awardingUnit"></div>
                <div><span>授予时间:</span><input class="te1" type="date" name="awardingTime"></div>
                <div><span class="two">表彰决定文件名:</span><input type="text" name="recognitionFileName" style="width: 200px;"></div>
                <div><span class="three">文件名文号:</span><input type="text" name="symbol" style="width: 200px;"></div>
                <div><span>发文单位:</span><input class="te1" type="text" name="recognitionUnit"></div>
                <div><span>发文日期:</span><input class="te1" type="date" name="recognitionTime"></div>
                <div><span class="four">上传认定材料:</span><input type="file" style="width: 160px; border: none;" name="file"></div>
                <input type="button" class="cc1" onclick="getnext('step3')" style="margin-top: 10px;" value="上一步">
                <input type="submit" class="cc2" onclick="refer();sub('four','next3');" value="提交">
                <input type="button" class="cc3" onclick="cancel()" value="取消">
            </form>
        </div>
    </div>
    <%--    修改制作--%>
    <div class="modify">
        <div class="q">先进个人信息修改</div>
        <%--        第一个小页面--%>
        <div id="step5">
            <form id="five" method="post">
                <div class="st1"><span>选择劳模称号:</span>
                    <select name="modelWorkerTitle">
                        <option value="nationalModelWorker">全国劳模</option>
                        <option value="SichuanModelWorker">四川省劳模</option>
                        <option value="national51ModelWorker">全国五一劳动奖章</option>
                        <option value="Sichuan51ModelWorker">四川五一劳动奖章</option>
                        <option value="other">其他劳动荣誉称号</option>
                    </select></div>
                <div class="st2"><span>选择劳模待遇:</span>
                    <select name="modelWorkerTreatment">
                        <option value="enjoyNationalModelWorker">享受全国劳动模范待遇</option>
                        <option value="EnjoySichuanModelWorker">享受省、部级劳动模范待遇</option>
                        <option value="cantModelWorkerTreatment">不能享受劳动模范待遇</option>
                        <option value="cantModelWorker">不能享受省、部级劳动模范待遇</option>
                    </select>
                </div>
                <input type="button" class="cc1" onclick="getnext2('step6');sub('five','modelWorkerDeclare');"
                       value="下一步">
                <input type="button" class="cc2" onclick="cancel()" value="取消">
            </form>
        </div>
        <%--        第二个小页面--%>
        <div id="step6">
            <form id="six" method="post">
                <div style="margin-top: 40px">
                    <span>姓&emsp;&emsp;名:</span><input type="text">
                    <span>身份证号:</span><input type="text" class="t1">
                </div>
                <div>
                    <span>性&emsp;&emsp;别:</span><input type="radio" class="rad" value="man" name="sex" checked="checked"
                                                       style="width: 20px;height: 20px">男
                    <input type="radio" value="woman" class="rad" name="sex"
                           style="margin-left: 63px;width: 20px;height: 20px">女
                    <span>联系电话:</span><input type="text" class="t1">
                </div>
                <div>
                    <span>民&emsp;&emsp;族:</span>
                    <select>
                        <option value="han_nationality">汉族</option>
                        <option value="ethnic_minority">少数民族</option>
                    </select><span>工作单位:</span><input type="text" class="t1">
                </div>
                <div>
                    <span>出生年月:</span><input type="date">
                    <span>职&emsp;&emsp;位:</span>
                    <select style="width: 175px;">
                        <option value="junior_middle_school">无</option>
                        <option value="high_school">财务</option>
                        <option value="undergraduate">副会长</option>
                        <option value="master">会长</option>
                    </select>
                </div>
                <div>
                    <span>出生年月:</span><input type="date">
                    <span>职&emsp;&emsp;位:</span>
                    <select style="width: 175px;">
                        <option value="nothing">无</option>
                        <option value="finance">财务</option>
                        <option value="vice_president">副会长</option>
                        <option value="president">会长</option>
                    </select>
                </div>
                <div>
                    <span>文化程度:</span>
                    <select>
                        <option value="primary_school">小学</option>
                        <option value="junior_middle_school">初中</option>
                        <option value="high_school">高中</option>
                        <option value="specialty">专科</option>
                        <option value="undergraduate">本科</option>
                        <option value="master">硕士</option>
                        <option value="doctor">博士</option>
                    </select><span>获得称号时间:</span><input type="date">
                </div>
                <input type="button" class="cc1" onclick="getnext2('step5')" value="上一步">
                <input type="button" class="cc2" onclick="getnext2('step7');sub('six','next1')" value="下一步">
                <input type="button" class="cc3" onclick="cancel()" value="取消">
            </form>
        </div>
        <%--        第三个小页面--%>
        <div id="step7">
            <form id="seven">
                <div style="margin-top: 23px;"><span>身体健康状况:</span>
                    <input type="radio" name="healthy" class="rad" value="yse" checked="checked"
                           style="margin-left: 60px;width: 20px;height: 20px;">健康
                    <input type="radio" value="no" name="healthy" class="rad"
                           style="margin-left: 10px;width: 20px;height: 20px;">不健康
                </div>
                <div><span>是否已获得荣誉称号:</span><input type="radio" name="honor" checked="checked" class="rad" value="yse"
                                                   style="width: 20px;height: 20px;">是
                    <input type="radio" value="no" name="honor" class="rad"
                           style="margin-left: 10px; width: 20px;height: 20px;">否
                </div>
                <div><span>家庭困难情况:</span>
                    <select>
                        <option value="not_difficult">不困难</option>
                        <option value="first_level_difficulty">一级困难</option>
                        <option value="two_level_difficulty">二级困难</option>
                        <option value="three_level_difficulty">三级困难</option>
                    </select></div>
                <div><span>&emsp;&emsp;就业情况:</span>
                    <select>
                        <option value="be_unemployed">无业</option>
                        <option value="on_duty">在岗</option>
                        <option value="liberal_professions">自由职业</option>
                    </select></div>
                <div><span style="width: 145px;">主要突出事迹:</span><input type="text"></div>
                <input type="button" class="cc1" onclick="getnext2('step6')" value="上一步">
                <input type="button" class="cc2" onclick="getnext2('step8');sub('seven','next2');" value="下一步">
                <input type="button" class="cc3" onclick="cancel()" value="取消">
            </form>
        </div>
        <%--        第四个小页面--%>
        <div id="step8">
            <form id="eight" method="post">
                <div class="one">输入认定材料</div>
                <div><span>授予单位:</span><input class="te1" type="text"></div>
                <div><span>授予时间:</span><input class="te1" type="date"></div>
                <div><span class="two">表彰决定文件名:</span><input type="text" style="width: 200px;"></div>
                <div><span class="three">文件名文号:</span><input type="text" style="width: 200px;"></div>
                <div><span>发文单位:</span><input class="te1" type="text"></div>
                <div><span>发文日期:</span><input class="te1" type="date"></div>
                <div><span class="four">上传认定材料:</span><input type="file" style="width: 160px; border: none;"></div>
                <input type="button" class="cc1" onclick="getnext2('step7')" style="margin-top: 10px;" value="上一步">
                <input type="button" class="cc2" onclick="refer();sub('eight','next3');" value="提交">
                <input type="button" class="cc3" onclick="cancel()" value="取消">
            </form>
        </div>
    </div>
</div>
</body>
</html>
