<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2021/5/20
  Time: 19:33
  To change this template use File | Settings | File Templates.
--%>

<%--实现数据上传--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>upload</title>
</head>
<body>
<%--enctype 标记数据传输类型--%>
    <form method="post" action="/jsp_study_war_exploded/downloadServlet" enctype="multipart/form-data">
        <label for="name">用户名</label><input type="text" name="username" id="name"><br>
        <label for="photo">头像</label><input type="file" name="photo" id="photo"><br>
        <input type="submit" value="提交">
    </form>

    <a href="/jsp_study_war_exploded/servlet">下载图片</a>
</body>
</html>
