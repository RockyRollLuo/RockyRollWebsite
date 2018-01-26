<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="utf-8" %>
<%@include file="common/tag.jsp" %>
<% String basePath=request.getContextPath();%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="common/head.jsp" %>
    <title>别瞎点！</title>
    <link rel="shortcut icon" href="<%=basePath%>/resource/img/favicon.png">
    <!-- Bootstrap -->
    <link href="<%=basePath%>/resource/assets/css/bootstrap.css" rel="stylesheet">
    <link href="<%=basePath%>/resource/assets/css/font-awesome.css" rel="stylesheet">
    <link href="<%=basePath%>/resource/assets/css/bootstrap-theme.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=basePath%>/resource/assets/css/animations.css">

    <!-- siimple style -->
    <link href="<%=basePath%>/resource/assets/css/style.css" rel="stylesheet">
</head>
<body>
<div class="cloud floating">
    <img src="<%=basePath%>/resource/assets/img/cloud.png" alt="Scoop Themes">
</div>

<div class="cloud pos1 fliped floating">
    <img src="<%=basePath%>/resource/assets/img/cloud.png" alt="Scoop Themes">
</div>

<div class="cloud pos2 floating">
    <img src="<%=basePath%>/resource/assets/img/cloud.png" alt="Scoop Themes">
</div>

<div class="cloud pos3 fliped floating">
    <img src="<%=basePath%>/resource/assets/img/cloud.png" alt="Scoop Themes">
</div>


<div id="wrapper">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
                <img src="<%=basePath%>/resource/assets/img/logo.png" alt="Scoop Themes Logo">
                <br/>
                <br/>
                <h2 class="subtitle">We're working hard to launch our website and we'll be ready very soon</h2>
                <br/>

                <br/>
            </div>
            <div class="col-sm-12 align-center">
                <ul class="social-network social-circle">
                    <li><a href="#" class="icoFacebook" title="Facebook"><i class="fa fa-facebook"></i></a>
                    </li>
                    <li><a href="#" class="icoTwitter" title="Twitter"><i class="fa fa-twitter"></i></a>
                    </li>
                    <li><a href="#" class="icoGit" title="Github"><i class="fa fa-github"></i></a>
                    </li>
                    <li><a href="#" class="icoLinkedin" title="Linkedin"><i class="fa fa-linkedin"></i></a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-lg-offset-3">
                <p class="copyright">Copyright &copy; 2018 - RockyRoll.cs</p>
            </div>
        </div>
    </div>
</div>


<script>

    $(document).ready( function () {
        $('#wrapper').height($(document).height());
        // I only have one form on the page but you can be more specific if need be.
        var $form = $('form');

        if ( $form.length > 0 ) {
            $('form input[type="submit"]').bind('click', function ( event ) {
                if ( event ) event.preventDefault();
                // validate_input() is a validation function I wrote, you'll have to substitute this with your own.
                if ( $form.validate() ) { register($form); }
            });
        }
    });

    function appendResult(userText , className, iconClass){
        var resultHTML = "<div class='stretchLeft result "+ className + "'>" + userText + " <span class='fa fa-" + iconClass + "'></span>" + "</div>";
        $('body').append(resultHTML);
        $('.result').delay(10000).fadeOut('1000');
    }

</script>


<%@include file="common/bottomjs.jsp" %>
</body>
</html>