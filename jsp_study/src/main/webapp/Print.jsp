<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2021/5/20
  Time: 18:08
  To change this template use File | Settings | File Templates.
--%>

<%--利用脚本表达式完成九九乘法表--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>九九乘法表</title>
    <style>
        td {
            padding-right: 10px;
        }
    </style>
</head>
<body>
    <table>
        <%
            for(int i = 1 ; i <= 9 ; i++){
        %>
        <tr>
            <%
                for(int j = 1 ; j <= i ;j++){
            %>
            <td><%=i+"x"+j+"="+i*j %></td>
            <%
                }
            %>
        </tr>
        <%
            }
        %>
    </table>

</body>
</html>
