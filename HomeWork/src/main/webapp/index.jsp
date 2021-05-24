<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<!DOCTYPE html>
<html>
<head>
<%--    <title>JSP - Hello World</title>--%>
<%--    <%      String basePath = request.getScheme()--%>
<%--            + "://" + request.getServerName()--%>
<%--            + ":"--%>
<%--            + request.getServerPort()--%>
<%--            + request.getContextPath()--%>
<%--            + "/";--%>
<%--    %>--%>

<%--    <base href="<%=basePath%>">--%>
    <base href="http://localhost:8080/HomeWork_war_exploded/">
    <style>
        * {
            padding: 0;
            margin: 0;
        }

        a {
            text-decoration: none;
            color: #000000;
        }

        .login {
            width: 512px;
            height: 260px;
            position: fixed;
            border: #ebebeb solid 1px;
            left: 50%;
            top: 50%;
            background: #ffffff;
            box-shadow: 0px 0px 20px #ddd;
            z-index: 9999;
            transform: translate(-50%, -50%);
        }

        .login-title {
            width: 100%;
            margin: 10px 0px 0px 0px;
            text-align: center;
            line-height: 40px;
            height: 40px;
            font-size: 18px;
            position: relative;
            cursor: move;
        }

        .login-input-content {
            margin-top: 20px;
        }

        .login-bg {
            width: 100%;
            height: 100%;
            position: fixed;
            top: 0px;
            left: 0px;
            background: rgba(0, 0, 0, .3);
        }

        .login-button {
            width: 50%;
            margin: 10px auto 0px auto;
            line-height: 40px;
            font-size: 14px;
            border: #ebebeb 1px solid;
            text-align: center;
        }

        .login-button a {
            display: inline-block;
            /*border-right: 1px solid #ebebeb;*/
        }

        .login-input input.list-input {
            float: left;
            line-height: 35px;
            height: 35px;
            width: 350px;
            border: #ebebeb 1px solid;
            text-indent: 5px;
        }

        .login-input {
            overflow: hidden;
            margin: 0px 0px 20px 0px;
        }

        .login-input label {
            float: left;
            width: 90px;
            padding-right: 10px;
            text-align: right;
            line-height: 35px;
            height: 35px;
            font-size: 14px;
        }
    </style>
</head>

<body>
<div id="login" class="login">
    <div id="title" class="login-title">登录
    </div>
    <form action="loginServlet" method="post" id="login_in">
        <div class="login-input-content">
            <div class="login-input">
                <label for="username">用户名：</label>
                <input type="text" placeholder="请输入用户名" name="username" id="username" class="list-input">
            </div>
            <div class="login-input">
                <label for="password">登录密码：</label>
                <input type="password" placeholder="请输入登录密码" name="password" id="password" class="list-input">
            </div>
        </div>
        <div id="loginBtn" class="login-button">
            <a href="javascript:void(0);" id="login-button-submit">登录系统</a>
            <a href="javascript:void(0);" id="cancel-button">取消登录</a>
        </div>
    </form>
</div>
<div id="bg" class="login-bg"></div>

<script>
    var submit = document.querySelector("#login-button-submit");
    var cancel = document.querySelector("#cancel-button");
    var form = document.querySelector("#login_in")
    var username = document.querySelector("#username");
    var password = document.querySelector("#password");
    submit.addEventListener("click", function () {
        if (username.value == "") {
            alert("username不能为空");
        }else if(password.value == ""){
            alert("password不能为空");
        }else{
            form.submit();
        }
    });

    cancel.addEventListener("click",function(){
        username.value = "";
        password.value = "";
        username.focus();
    });


</script>
</body>

</html>