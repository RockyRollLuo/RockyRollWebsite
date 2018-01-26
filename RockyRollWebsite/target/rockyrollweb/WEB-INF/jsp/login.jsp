<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="utf-8" %>
<%@include file="common/tag.jsp" %>
<% String basePath=request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
    <%@include file="common/head.jsp" %>
    <link rel="stylesheet" href="<%=basePath%>/resource/css/login/style.css">
    <title>登录</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12 text-center">
            <ul class="menu">
                <li><a href="<%=basePath%>/index">RockyRoll 首页</a></li>
            </ul>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 col-md-push-8">

            <!-- Start Sign In Form -->
            <form action="loginValidatioin" id="login-form" class="fh5co-form" method="post">
                <h2>登录</h2>
                <div class="form-group">
                    <label for="username" class="sr-only">用户名:</label>
                    <input type="text" class="form-control" id="username" name="username" placeholder="邮箱地址" autocomplete="off" value="${signInName}">
                </div>
                <div class="form-group">
                    <label for="password" class="sr-only">密码</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="密码" autocomplete="off" value="${signInPw}">
                </div>
                <div class="form-group">
                    <label for="remember"><input type="checkbox" id="remember" name="remember">记住我</label>
                </div>
                <div class="form-group">
                    <p>未注册? <a href="sign-up">注册</a> | <a href="forgot">忘记密码?</a></p>
                </div>
                <div class="form-group">
                    <input type="submit" value="登录" id="login-submit" class="btn btn-primary">
                </div>
            </form>
            <!-- END Sign In Form -->

        </div>
    </div>
    <div class="row" style="padding-top: 60px; clear: both;">
        <div class="col-md-12 text-center"><p><small>&copy; All Rights Reserved. Collect from RockyRoll</small></p></div>
    </div>
</div>

<%@include file="common/bottomjs.jsp" %>
<script src="<%=basePath%>/resource/js/login/main.js"></script>
</body>
</html>