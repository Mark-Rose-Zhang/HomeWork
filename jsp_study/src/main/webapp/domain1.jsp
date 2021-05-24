<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2021/5/14
  Time: 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>domain1</title>
</head>
<body>
    <ul>
        <li>pageContent:<%= pageContext.getAttribute("key1")%><br></li>
        <li>request:<%= request.getAttribute("key2")%><br></li>
        <li>session:<%= session.getAttribute("key3")%><br></li>
        <li>application:<%= application.getAttribute("key4")%></li>
    </ul>
</body>
</html>
