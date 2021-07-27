<%--
  Created by IntelliJ IDEA.
  User: king
  Date: 2021/7/24
  Time: 15:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/next3" method="post">
    <table>
        <tr>授予单位：<input type="text" value="" name="certifiedMaterials.awardingUnit"></tr>
        <tr>授予时间：<input type="date" value="" name="certifiedMaterials.awardingTime"></tr>
        <tr>表彰决定文件名：<input type="text" value="" name="certifiedMaterials.recognitionFileName"></tr>
        <tr>文件名的文号（填入数字）：<input type="text" value="" name="certifiedMaterials.Symbol"></tr>
        <tr>发文单位：<input type="text" value="" name="certifiedMaterials.recognitionUnit"></tr>
        <tr>发文时间：<input type="date" value="" name="certifiedMaterials.recognitionTime"></tr>
    </table>
    <br>
    <input type="submit" value="下一步">
</form>
</body>
</html>
