<%@ page import="com.example.jsp_study.Generic" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2021/5/16
  Time: 22:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL</title>
</head>
<body>
<%--    创建对象  使用EL表达式--%>
    <%
        Generic generic = new Generic();
        List<String> list = new ArrayList<>();
        list.add("Jack");
        list.add("mark");
        list.add("John");
        generic.setList(list);
        Map<String , Object> map = new HashMap<>();
        map.put("Key1",100);
        map.put("Key2",200);
        map.put("Key3",300);
        generic.setMap(map);
        generic.setSize(2048);

        //加载到pageContext对象中
        pageContext.setAttribute("generic",generic);
    %>

<%--    使用EL表达式--%>

    ${generic.size}<br>
    ${generic.map}<br>
    ${generic.list}

    ${generic.size == 2048 ? "true":"false"}
</body>
</html>
