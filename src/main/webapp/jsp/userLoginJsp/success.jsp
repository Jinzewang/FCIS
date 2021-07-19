<%--
  Created by IntelliJ IDEA.
  User: king
  Date: 2021/7/17
  Time: 17:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功</title>
</head>
<body>
<div>
    <strong> welcome,${sessionScope.user.username}! </strong>
</div>
this is success page!

<a href="/anotherpage">点我跳到另一个页面</a><br>
<a href="/first">点我申报先进个人</a>
<form action="/outLogin" method="post">
    <table>
        <tr>
            <td><input type="submit" value="退出登录"></td>
        </tr>
    </table>
</form>
</body>
</html>
