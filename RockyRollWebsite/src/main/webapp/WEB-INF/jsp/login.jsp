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
        <div class="col-md-4 col-md-offset-4">

            <!-- Start Sign In Form -->
            <%--<form action="loginValidatioin" class="fh5co-form animate-box"  data-animate-effect="fadeInRight">--%>
            <form action="login-validatioin" class="fh5co-form animate-box" >
                <h2>Sign In</h2>
                <div class="form-group">
                    <label for="username" class="sr-only">Username</label>
                    <input type="text" class="form-control" id="username" placeholder="Username" autocomplete="off">
                </div>
                <div class="form-group">
                    <label for="password" class="sr-only">Password</label>
                    <input type="password" class="form-control" id="password" placeholder="Password" autocomplete="off">
                </div>
                <div class="form-group">
                    <label for="remember"><input type="checkbox" id="remember"> Remember Me</label>
                </div>
                <div class="form-group">
                    <p>Not registered? <a href="sign-up">Sign Up</a> | <a href="forgot">Forgot Password?</a></p>
                </div>
                <div class="form-group">
                    <input type="submit" value="Sign In" class="btn btn-primary">
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
<%--<script src="<%=basePath%>/resource/js/login/main.js"></script>--%>
</body>
</html>