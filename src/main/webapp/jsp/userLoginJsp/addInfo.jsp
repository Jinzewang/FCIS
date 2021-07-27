<%--
  Created by IntelliJ IDEA.
  User: king
  Date: 2021/7/24
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="/next2" method="post">
    <table>
        <tr>
            <td>身体健康状况：</td><td><input type="text" value="" name="addinfo.addstateofHealth"></td>
        </tr>
        <tr>
            <td>家庭困难情况</td><td><input type="text" value="" name="addinfo.stateofFamily"></td>
        </tr>
        <tr>
            <td>就业情况：</td><td><input type="text" value="" name="addinfo.stateofJob"></td>
        </tr>
        <tr>
            <td>主要突出事迹：</td><td><input type="text" value="" name="addinfo.outstandingDeeds"></td>
        </tr>
        <tr>
            <td>是否已获得的荣誉称号：</td>
            <td>
                <input type="radio" value="true" name="addinfo.modelWorkerTitle">是
                <input type="radio" value="false" name="addinfo.modelWorkerTitle">否
            </td>
        </tr>
    </table><br>
    <input type="submit" value="下一步">
</form>
</body>
</html>
