<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="utf-8" %>
<%@include file="common/tag.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <%@include file="common/head.jsp" %>
    <title>登录</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12 text-center">
            <ul class="menu">
                <li class="active"><a href="index.html">Style 1</a></li>
                <li><a href="index2.html">Style 2</a></li>
                <li><a href="index3.html">Style 3</a></li>
            </ul>
        </div>
    </div>
    <div class="copyrights">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div>
    <div class="row">
        <div class="col-md-4 col-md-offset-4">


            <!-- Start Sign In Form -->
            <form action="#" class="fh5co-form animate-box" data-animate-effect="fadeIn">
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
                    <p>Not registered? <a href="sign-up.html">Sign Up</a> | <a href="forgot.html">Forgot Password?</a></p>
                </div>
                <div class="form-group">
                    <input type="submit" value="Sign In" class="btn btn-primary">
                </div>
            </form>
            <!-- END Sign In Form -->

        </div>
    </div>
    <div class="row" style="padding-top: 60px; clear: both;">
        <div class="col-md-12 text-center"><p><small>&copy; All Rights Reserved. More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></small></p></div>
    </div>
</div>

<script src="js/jquery.placeholder.min.js"></script>
<!-- Waypoints -->
<script src="js/jquery.waypoints.min.js"></script>
<!-- Main JS -->
<script src="js/main.js"></script>




<%@include file="common/bottomjs.jsp" %>
</body>
</html>