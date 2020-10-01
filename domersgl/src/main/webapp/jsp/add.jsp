<%--
  Created by IntelliJ IDEA.
  User: sys
  Date: 2020-10-02
  Time: 01:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="application/ecmascript" src="/static/js/jquery-3.4.1.min.js"></script>

</head>
<body>
<form action="/doadd" method="post">
    <table border="1px">
        <tr>
            <td colspan="2" style="text-align: center">添加人员</td>
        </tr>
        <tr>
            <td>姓名:</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>性别:</td>
            <td>
                <select name="sex">
                    <option value="2">请选择</option>
                    <option value="0">女</option>
                    <option value="1">男</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>年龄:</td>
            <td><input type="text" name="age"></td>
        </tr>
        <tr>
            <td>等级:</td>
            <td>
                <select name="rank">
                    <option value="0">请选择</option>
                    <option value="1">1级</option>
                    <option value="2">2级</option>
                    <option value="3">3级</option>
                    <option value="4">4级</option>
                    <option value="5">5级</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>部门:</td>
            <td>
                <select name="department">
                    <option value="请选择">请选择</option>
                    <option value="支持部">支持部</option>
                    <option value="开发部">开发部</option>
                    <option value="工程质量部">工程质量部</option>
                </select>
            </td>
        </tr>
        <tr>
            <td><input type="submit" value="提交"></td>
        </tr>
    </table>
</form>
<script>
    $("tr:even").css("background-color", "red");
    $("tr:odd").css("background-color", "pink");

</script>
</body>
</html>
