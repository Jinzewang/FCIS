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
            font-family: "华文行楷";
        }

        .o .r2 > span {
            font-family: "华文行楷";
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
        <div style="float: right;">退出</div>
        <div style="float: right;margin-right: 30px;">个人中心</div>
        <div style="float: right;margin-right: 30px;">首页</div>
    </div>
    <div class="t">
        <span>信息管理</span><br>
        <input type="button" value="先进个人信息管理"><br>
        <input type="button" value="先进集体信息管理">
    </div>
    <div class="r1">
        <%--        开始页面--%>
        <span class="s1">ZGH</span><br><br>
        <span class="s2">总工会先进管理系统</span>
    </div>
    <div class="r2">
        <div class="s11" style="float: left;">
            <span class="s1" style="margin-top: 30px;margin-left: 400px;">ZGH</span><br>
            <span class="s2" style="margin-left: 300px;">总工会先进管理系统</span><br>
        </div>
        <%--        先进个人表格--%>
        <div class="d">
            <div class="g">
                <input type="button" class="g1" value="先进个人信息申报">
                <input type="button" class="g2" value="先进个人信息删除">
                <input type="text" class="g3"><input type="button" class="g4" value="查询">
            </div>
            <div class="ta">
                <table border="1" cellspacing="0" cellpadding="0">
                    <tr>
                        <th>序号</th>
                        <th>工号</th>
                        <th>姓名</th>
                        <th>申报类型</th>
                        <th>申报时间</th>
                        <th>申报状态</th>
                        <th>审核人</th>
                        <th>审核时间</th>
                        <th>操作</th>
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
                        <td><input type="button" value="修改"></td>
                    </tr>
                    <%}%>
                </table>
            </div>
        </div>
        <%--        先进个人--%>
        <div class="xin">
            <h2>先进个人信息申报</h2>
            <div>
                <span>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名:</span><input type="text">
                <span>电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话:</span><input type="text">
            </div>
            <div>
                <span>工&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号:</span><input type="text">
                <span>地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址:</span><input type="text"><br>
            </div>
            <div>
                <span>邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱:</span><input type="text">
                <span>部&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;门:</span><input type="text"><br>
            </div>
            <div class="sb"><span>&nbsp;申报类型:</span>
                <select>
                    <option value="volvo">Volvo</option>
                    <option value="saab">Saab</option>
                    <option value="opel">Opel</option>
                    <option value="audi">Audi</option>
                </select></div>
            <input type="button" class="cc1" value="提交">
            <input type="button" class="cc2" value="取消">
        </div>
        <%--        先进集体表格--%>
        <div class="xj">
            <div class="g"><input type="button" class="g1" value="先进集体信息申报">
                <input type="button" class="g2" value="先进集体信息删除">
                <input type="text" class="g3"><input type="button" class="g4" value="查询">
            </div>
            <div class="ta">
                <table border="1" cellspacing="0" cellpadding="0">
                    <tr>
                        <th>序号</th>
                        <th>工号</th>
                        <th>姓名</th>
                        <th>申报类型</th>
                        <th>申报时间</th>
                        <th>申报状态</th>
                        <th>审核人</th>
                        <th>审核时间</th>
                        <th>操作</th>
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
                        <td><input type="button" value="修改"></td>
                    </tr>
                    <%}%>
                </table>
            </div>
        </div>
        <%--        先进集体--%>
        <div class="colle">
            <h2>先进集体信息申报</h2>
            <div>
                <span>负责人姓名:</span><input type="text">
                <span>电&nbsp;&nbsp;&nbsp;话:</span><input type="text">
            </div>
            <div>
                <span>负责人工号:</span><input type="text">
                <span>地&nbsp;&nbsp;&nbsp;址:</span><input type="text"><br>
            </div>
            <div>
                <span>邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱:</span><input type="text">
                <span>部&nbsp;&nbsp;&nbsp;门:</span><input type="text"><br>
            </div>
            <div class="sb"><span>&nbsp;申报类型:</span>
                <select>
                    <option value="volvo">Volvo</option>
                    <option value="saab">Saab</option>
                    <option value="opel">Opel</option>
                    <option value="audi">Audi</option>
                </select></div>
            <input type="button" class="cc1" value="提交">
            <input type="button" class="cc2" value="取消">
        </div>
    </div>
</div>
</body>

</html>