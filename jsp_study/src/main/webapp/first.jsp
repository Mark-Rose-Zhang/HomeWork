<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2021/5/13
  Time: 21:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  errorPage="errorPage.jsp" pageEncoding="UTF-8" %>
<%@ page import="java.io.*" %>
<html>
<head>
    <title>first</title>
</head>
<body>
    这是一个jsp文件
    你好<br/>
    Hello World!

<%--    三种脚本文件--%>


<%--    声明脚本 在jsp生成的class文件中出现，不会出现在_jspservice()方法中--%>
<%--    1、声明类属性 2、声明 static 静态代码块 3、声明类方法 4、声明内部类--%>
    <%!int i; %>
    <%!
//      2、声明 static 静态代码块
        static {
//        System.out.println("这是一个静态代码块");
    }%>
    <%!
//      3、声明类方法
        public int get(){
            return 10*2;
    }%>

    <%!
//      4、声明内部类
        public class user{
        private int id;
        private String name;
        private int age;
    }%>


    <%--表达式脚本的格式是：<%=表达式%> --%>
    <%--表达式脚本的作用是：的 jsp 页面上输出数据 可以使用内置对象的方法返回值--%>
    <br/>
    <%="Hello World!"%>
    <%=10086%>
    <%=request.getParameter("username")%>

    <%--    代码脚本的格式是： <% java 语句 %> --%>
    <%-- 代码脚本的作用是：可以在 jsp 页面中，编写我们自己需要的功能（写的是 java 语句）。--%>
<%--    代码脚本可以与表达式脚本一起使用--%>
<%--    可以多个代码脚本构成完整的java语句--%>
    <%
        System.out.println("--------------");
        for(int i=0;i<10;i++){
    %>
    <%        System.out.println("This is "+i);
        }
    %>

    <br>
    <table border="1" cellspacing="0">
        <%
            for (int j = 0; j < 5; j++) {
        %>
        <tr>
            <td>这是第<%=j%>行</td>
        </tr>
        <%
            }
        %>
    </table>

</body>
</html>
