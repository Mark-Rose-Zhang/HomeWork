<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2021/5/14
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>domain</title>
    <style>
      li {
        list-style: none;
      }

    </style>
</head>
<body>
    <h4>初识四大域对象</h4>
    <ul>
      <li>pageContext (PageContextImpl 类) 当前 jsp 页面范围内有效</li>
      <li>request (HttpServletRequest 类) 一次请求内有效</li>
      <li>session (HttpSession 类)  一个会话范围内有效（打开浏览器访问服务器，直到关闭浏览器）</li>
      <li>application (ServletContext 类) 整个 web 工程范围内都有效（只要 web 工程不停止，数据都在）</li>
    </ul>

<%--    域对象是可以像 Map 一样存取数据的对象。四个域对象功能一样。不同的是它们对数据的存取范围。--%>
    <%
      pageContext.setAttribute("key1","pageContext");
      request.setAttribute("key2","request");
      session.setAttribute("key3","session");
      application.setAttribute("key4","application");
    %>

    pageContent:<%= pageContext.getAttribute("key1")%><br>
    request:<%= request.getAttribute("key2")%><br>
    session:<%= session.getAttribute("key3")%><br>
    application:<%= pageContext.getAttribute("key4")%>

    <%
      request.getRequestDispatcher("/domain1.jsp").forward(request,response);
    %>

</body>
</html>
