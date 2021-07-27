<%--
  Created by IntelliJ IDEA.
  User: king
  Date: 2021/7/24
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script src="../../static/js/city.js"></script>
<script src="../../static/js/modelWorkerDeclare.js"></script>
<form action="/next1" method="post">
<%--
    <fieldset>
        <legend>选择省市区（县）</legend>
        <form action="#">
            <label for="addr-show">您选择的是：
                <input type="text" value="" id="addr-show">
            </label>
            <br>
            <!--省份选择-->
            <select id="prov" onchange="showCity(this)">
                <option value="">=请选择省份=</option>
            </select>

            <!--城市选择-->
            <select id="city" onchange="showCountry(this)">
                <option value="">=请选择城市=</option>
            </select>

            <!--县区选择-->
            <select id="country" onchange="selectCountry(this)">
                <option value="">=请选择县区=</option>
            </select>
            <button type="button" class="btn met1" onClick="showAddr()">确定</button>
        </form>
    </fieldset><br>&lt;%&ndash;省市区县&ndash;%&gt;
--%>
    <table>
    输入姓名：<input type="text" value="" name="info.modelName">
    选择性别：<input type="radio" value="male" name="info.sex">男
    <input type="radio" value="female" name="info.sex">女
    <input type="radio" value="null" name="info.sex">保密<br>
    选择民族：
 <%--   <asp:DropDownList name="info.nationality" runat="server">
        <asp:ListItem Text="汉族" Value="汉族" Selected="True"/>
        <asp:ListItem Text="阿昌族" Value="阿昌族"/>
        <asp:ListItem Text="白族" Value="白族"/>
        <asp:ListItem Text="保安族" Value="保安族"/>
        <asp:ListItem Text="布朗族" Value="布朗族"/>
        <asp:ListItem Text="布依族" Value="布依族"/>
        <asp:ListItem Text="朝鲜族" Value="朝鲜族"/>
        <asp:ListItem Text="达斡尔族" Value="达斡尔族"/>
        <asp:ListItem Text="傣族" Value="傣族"/>
        <asp:ListItem Text="德昂族" Value="德昂族"/>
        <asp:ListItem Text="侗族" Value="侗族"/>
        <asp:ListItem Text="东乡族" Value="东乡族"/>
        <asp:ListItem Text="独龙族" Value="独龙族"/>
        <asp:ListItem Text="鄂伦春族" Value="鄂伦春族"/>
        <asp:ListItem Text="俄罗斯族" Value="俄罗斯族"/>
        <asp:ListItem Text="鄂温克族" Value="鄂温克族"/>
        <asp:ListItem Text="高山族" Value="高山族"/>
        <asp:ListItem Text="仡佬族" Value="仡佬族"/>
        <asp:ListItem Text="哈尼族" Value="哈尼族"/>
        <asp:ListItem Text="哈萨克族" Value="哈萨克族"/>
        <asp:ListItem Text="赫哲族" Value="赫哲族"/>
        <asp:ListItem Text="回族" Value="回族"/>
        <asp:ListItem Text="基诺族" Value="基诺族"/>
        <asp:ListItem Text="京族" Value="京族"/>
        <asp:ListItem Text="景颇族" Value="景颇族"/>
        <asp:ListItem Text="柯尔克孜族" Value="柯尔克孜族"/>
        <asp:ListItem Text="拉祜族" Value="拉祜族"/>
        <asp:ListItem Text="黎族" Value="黎族"/>
        <asp:ListItem Text="傈僳族" Value="傈僳族"/>
        <asp:ListItem Text="珞巴族" Value="珞巴族"/>
        <asp:ListItem Text="满族" Value="满族"/>
        <asp:ListItem Text="毛南族" Value="毛南族"/>
        <asp:ListItem Text="门巴族" Value="门巴族"/>
        <asp:ListItem Text="蒙古族" Value="蒙古族"/>
        <asp:ListItem Text="苗族" Value="苗族"/>
        <asp:ListItem Text="仫佬族" Value="仫佬族"/>
        <asp:ListItem Text="纳西族" Value="纳西族"/>
        <asp:ListItem Text="怒族" Value="怒族"/>
        <asp:ListItem Text="普米族" Value="普米族"/>
        <asp:ListItem Text="羌族" Value="羌族"/>
        <asp:ListItem Text="撒拉族" Value="撒拉族"/>
        <asp:ListItem Text="畲族" Value="畲族"/>
        <asp:ListItem Text="水族" Value="水族"/>
        <asp:ListItem Text="塔吉克族" Value="塔吉克族"/>
        <asp:ListItem Text="塔塔尔族" Value="塔塔尔族"/>
        <asp:ListItem Text="土族" Value="土族"/>
        <asp:ListItem Text="土家族" Value="土家族"/>
        <asp:ListItem Text="佤族" Value="佤族"/>
        <asp:ListItem Text="锡伯族" Value="锡伯族"/>
        <asp:ListItem Text="乌兹别克族" Value="乌兹别克族"/>
        <asp:ListItem Text="瑶族" Value="瑶族"/>
        <asp:ListItem Text="彝族" Value="彝族"/>
        <asp:ListItem Text="裕固族" Value="裕固族"/>
        <asp:ListItem Text="裕固族" Value="裕固族"/>
        <asp:ListItem Text="维吾尔族" Value="维吾尔族"/>
        <asp:ListItem Text="壮族" Value="壮族"/>
    </asp:DropDownList><br>--%>
    选择出生年月：<input type="date" name="info.born"><br>
    选择文化程度：<select name="info.education">
    <option value="Phd">已获得博士学位</option>
    <option value="masterDegree">已获得硕士学位</option>
    <option value="undergraduate">已获得学士学位</option>
    <option value="specialist">专科</option>
    <option value="belowJuniorCollege">大专以下</option>
</select><br>
    选择政治面貌：<select name="info.politicalState">
    <option value="partyMember">中共党员</option>
    <option value="probationaryMember">中共预备党员</option>
    <option value="communistYouthLeagueMember">共青团员</option>
    <option value="masses">群众</option>
</select><br>
    输入工作单位：<input type="text" name="info.organization"><br>
    输入职务：<input type="text" name="info.jobTitle"><br>
    获得称号时间：<input type="date" name="info.getModelWorkerTitleTime"><br>
    授予单位：<input type="text" name="info.awardingUnit"><br>
    输入身份证号：<input type="text" name="info.identityNumber"><br>
    输入联系电话：<input type="text" name="info.phone"><br>
    </table>
    <input type="submit" value="下一步">
</form>
</body>
</html>
