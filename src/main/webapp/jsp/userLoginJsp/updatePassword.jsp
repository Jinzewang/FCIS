<%--
  Created by IntelliJ IDEA.
  User: king
  Date: 2021/7/19
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改密码</title>
</head>
<body>
<form action="/updateNewPassWord" method="post">
    <table>
        <tr>
            <td>用户名：</td>
            <td><input type="text" value="" name="username"></td>
        </tr>
        <tr>
            <td>原密码：</td>
            <td><input type="text" value="" name="oldPassWord"></td>
        </tr>
        <tr>
            <td>新密码</td>
            <td><input type="password" value="" name="newPassWord"></td>
        </tr>
        <tr>
            <td>确认新密码：</td>
            <td><input type="password" value="" name="newPassWord1"></td>
        </tr>
        <tr>
            <input type="submit" value="确认修改">
        </tr>
    </table>
</form>
</body>
</html>
