<%--
  Created by IntelliJ IDEA.
  User: sys
  Date: 2020-10-02
  Time: 00:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script type="application/ecmascript" src="/static/js/jquery-3.4.1.min.js"></script>

</head>
<body>
<table border="1px">
<tr>
    <td colspan="7">人员列表</td>
</tr>
    <tr>
        <td>编号</td>
        <td>姓名</td>
        <td>性别</td>
        <td>年龄</td>
        <td>等级</td>
        <td>部门</td>
        <td>操作</td>
    </tr>
    <c:forEach items="${list}" var="item">
        <tr>
            <td>${item.id}</td>
            <td>${item.name}</td>
            <td>
                <c:if test="${item.sex==0}">
                    女
                </c:if>
                <c:if test="${item.sex==1}">
                    男
                </c:if>
            </td>
            <td>${item.age}</td>
            <td>
                <c:if test="${item.rank==1}">
                    1级
                </c:if>
                <c:if test="${item.rank==2}">
                    2级
                </c:if>
                <c:if test="${item.rank==3}">
                    3级
                </c:if>
                <c:if test="${item.rank==4}">
                    4级
                </c:if>
                <c:if test="${item.rank==5}">
                    5级
                </c:if>

            </td>
            <td>${item.department}</td>
            <td><a href="/del/${item.id}">删除</a></td>
        </tr>
    </c:forEach>
</table>
<form action="/jsp/add.jsp" method="post">
    <input type="submit" value="添加人员">
</form>
<script>
    $("tr:even").css("background-color", "red");
    $("tr:odd").css("background-color", "pink");

</script>
</body>
</html>
