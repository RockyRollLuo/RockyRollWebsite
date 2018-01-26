<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="utf-8" %>
<%@include file="common/tag.jsp" %>
<% String basePath = request.getContextPath();%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="common/head.jsp" %>
    <link rel="stylesheet" href="<%=basePath%>/resource/css/login/style.css">
    <title>RockyRollWebsite-注册</title>
</head>
<body class="style-3">

<div class="container">

    <div class="row">
        <div class="col-md-4 col-md-push-8">


            <!-- Start Sign In Form -->
            <form action="#" class="fh5co-form animate-box" data-animate-effect="fadeInRight">
                <h2>注册</h2>
                <div class="form-group">
                    <div class="alert alert-success" role="alert">信息已保存！</div>
                </div>
                <div class="form-group">
                    <label for="name" class="sr-only">姓名</label>
                    <input type="text" class="form-control" id="name" placeholder="用户名" autocomplete="off">
                </div>
                <div class="form-group">
                    <label for="email" class="sr-only">邮箱</label>
                    <input type="email" class="form-control" id="email" placeholder="邮箱" autocomplete="off">
                </div>
                <div class="form-group">
                    <label for="password" class="sr-only">密码</label>
                    <input type="password" class="form-control" id="password" placeholder="密码" autocomplete="off">
                </div>
                <div class="form-group">
                    <label for="re-password" class="sr-only">确认密码</label>
                    <input type="password" class="form-control" id="re-password" placeholder="确认密码" autocomplete="off">
                </div>
                <div class="form-group">
                    <label for="remember"><input type="checkbox" id="remember">记住我</label>
                </div>
                <div class="form-group">
                    <p>已经注册? <a href="<%=basePath%>/login">登录</a></p>
                </div>
                <div class="form-group">
                    <input type="submit" value="提交" id="sign-up-submit" class="btn btn-primary">
                </div>
            </form>
            <!-- END Sign In Form -->
        </div>
    </div>
    <div class="row" style="padding-top: 60px; clear: both;">
        <div class="col-md-12 text-center"><p><small>&copy; All Rights Reserved - Collect from RockyRoll.cs</small></p></div>
    </div>
</div>
<script src="<%=basePath%>/resource/js/login/main.js"></script>
<%@include file="common/bottomjs.jsp" %>
</body>
</html>