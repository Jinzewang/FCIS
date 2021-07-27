<%--
  Created by IntelliJ IDEA.
  User: king
  Date: 2021/7/24
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>相关选择</title>
</head>
<body>
<form action="/modelWorkerDeclare" method="post">
    选择劳模称号：
    <select name="modelWorkerTitle">
        <option value="nationalModelWorker">全国劳模</option>
        <option value="SichuanModelWorker">四川省劳模</option>
        <option value="national51ModelWorker">全国五一劳动奖章</option>
        <option value="Sichuan51ModelWorker">四川五一劳动奖章</option>
        <option value="other">其他劳动荣誉称号</option>
    </select><br>
    选择劳模待遇：
    <select name="modelWorkerTreatment">
        <option value="enjoyNationalModelWorker">享受全国劳动模范待遇</option>
        <option value="EnjoySichuanModelWorker">享受省、部级劳动模范待遇</option>
        <option value="cantModelWorkerTreatment">不能享受劳动模范待遇</option>
        <option value="cantModelWorker">不能享受省、部级劳动模范待遇</option>
    </select><br>
    <input type="submit" value="下一步">
</form>
</body>
</html>
