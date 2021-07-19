<%--
  Created by IntelliJ IDEA.
  User: king
  Date: 2021/7/17
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>此外</title>
</head>
<body>
<div>
    <strong> ${sessionScope.user.username}!!!!! </strong>
</div>
<form action="/outLogin" method="post">
    <table>
        <tr>
            <td><input type="submit" value="退出登录" ></td>
        </tr>
    </table>
</form>
</body>
</html>
