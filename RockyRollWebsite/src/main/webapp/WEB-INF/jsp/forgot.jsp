<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="utf-8" %>
<%@include file="common/tag.jsp" %>
<% String basePath = request.getContextPath();%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="common/head.jsp" %>
    <link rel="stylesheet" href="<%=basePath%>/resource/css/login/style.css">
    <title>RockyRollWebsite-找回密码</title>
</head>
<body class="style-3">
    <div class="row">
        <div class="col-md-4 col-md-push-8">


            <!-- Start Sign In Form -->
            <form action="#" class="fh5co-form animate-box" data-animate-effect="fadeInRight">
                <h2>Forgot Password</h2>
                <div class="form-group">
                    <div class="alert alert-success" role="alert">Your email has been sent.</div>
                </div>
                <div class="form-group">
                    <label for="email" class="sr-only">Email</label>
                    <input type="email" class="form-control" id="email" placeholder="Email" autocomplete="off">
                </div>
                <div class="form-group">
                    <p><a href="<%=basePath%>/login">Sign In</a> or <a href="<%=basePath%>/sign-up">Sign Up</a></p>
                </div>
                <div class="form-group">
                    <input type="submit" value="Send Email" class="btn btn-primary">
                </div>
            </form>
            <!-- END Sign In Form -->

        </div>
    </div>
    <div class="row" style="padding-top: 60px; clear: both;">
        <div class="col-md-12 text-center"><p><small>&copy; All Rights Reserved - Collect from RockyRoll.cs</small></p></div>
    </div>



<script src="<%=basePath%>/resource/js/login/main.js"></script>
<%@include file="common/bottomjs.jsp" %>
</body>
</html>