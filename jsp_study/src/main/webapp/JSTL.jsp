<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2021/5/19
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%--用来替代表达式脚本--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--    引入标签库--%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--    set标签向域中保存数据--%>
    保存之前：${abc} <br>
<%--scope:域范围   var:存储信息的变量 value:变量对应的值--%>
<c:set scope="session" var="abc" value="${100 == 100}"/>
<c:set scope="application" var="abc" value="Hello World"/>
<c:set scope="page" var="abc" value="${100 == 150}"/>
<c:set scope="request" var = "username" value="jack" />
<c:set scope="request" var = "password" value="123456" />
<c:remove var="abc" scope="session"></c:remove>
    保存之后：${applicationScope.abc} <br>
    保存之后：${param.username} <br>

<%--    out标签用于向界面输出数据 相当于<%=   %>--%>
<%--        三个属性值:value  default   escapeXml(是否忽略XML特殊字符)--%>
<%--    当value为空时输出主体内容--%>
    <c:out value="${null}">Hello World!</c:out><br/>

<%--if标签用于判断表达式的对错--%>
<c:if test="${(applicationScope.abc eq 'Hello World')}">符合条件</c:if>
<c:if test="${ !(12 != 12) }"> <h1>12 不等于 12</h1> </c:if>

<%--choose when othersize--%>
<c:choose>
    <c:when test="${pageScope.abc}">
        <h4>表达式成立</h4>
    </c:when>
    <c:otherwise>
        <h4 style="color: red">表达式错误</h4>
    </c:otherwise>
</c:choose>


<%--<c:import var="data" url="http://localhost:8080/jsp_study_war_exploded/index.jsp"/>--%>
<c:forEach items="${requestScope.values()}" var="parameter">
    <c:out value="${parameter}"></c:out><br/>
</c:forEach>

<%--重定向--%>
<%--<c:redirect url="https://www.baidu.com"></c:redirect>--%>
</body>
</html>
