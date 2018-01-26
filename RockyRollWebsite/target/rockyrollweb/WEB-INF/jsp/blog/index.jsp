<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="utf-8" %>
<%@include file="/WEB-INF/jsp/common/tag.jsp" %>
<% String basePath = request.getContextPath();%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="/WEB-INF/jsp/common/head.jsp" %>
    <link rel="stylesheet" href="<%=basePath%>/resource/css/blog/skel.css"/>
    <link rel="stylesheet" href="<%=basePath%>/resource/css/blog/style.css"/>
    <link rel="stylesheet" href="<%=basePath%>/resource/css/blog/style-wide.css"/>
    <title>RockyRollWebsite-Blog</title>
</head>
<body class="landing">

<!-- Header -->
<header id="header" class="skel-layers-fixed">
    <h1><a href="/index">RockyRoll</a></h1>
    <nav id="nav">
        <ul>
            <li><a href="/blog/index">内容首页</a></li>
            <li><a href="/blog/catalogue">目录</a></li>
            <li>
                <a href="#" class="icon fa-angle-down">选项</a>
                <ul>
                    <li><a href="/blog/generic">Generic</a></li>
                    <li><a href="/blog/contact">Contact</a></li>
                    <li><a href="/blog/elements">Elements</a></li>
                    <li><a href="/blog/template">template</a></li>
                </ul>
            </li>
        </ul>
    </nav>
</header>


<!-- Main -->
<section id="main" class="container">

    <section class="box special">
        <header class="major">
            <h2>Introducing the ultimate mobile app
                <br/>
                for doing stuff with your phone</h2>
            <p>Blandit varius ut praesent nascetur eu penatibus nisi risus faucibus nunc ornare<br/>
                adipiscing nunc adipiscing. Condimentum turpis massa.</p>
        </header>
        <span class="image featured"><img src="/resource/img/blog/pic01.jpg" alt=""/></span>
    </section>

    <section class="box special features">
        <div class="features-row">
            <section>
                <span class="icon major fa-bolt accent2"></span>
                <h3>Magna etiam</h3>
                <p>Integer volutpat ante et accumsan commophasellus sed aliquam feugiat lorem aliquet ut enim rutrum
                    phasellus iaculis accumsan dolore magna aliquam veroeros.</p>
            </section>
            <section>
                <span class="icon major fa-area-chart accent3"></span>
                <h3>Ipsum dolor</h3>
                <p>Integer volutpat ante et accumsan commophasellus sed aliquam feugiat lorem aliquet ut enim rutrum
                    phasellus iaculis accumsan dolore magna aliquam veroeros.</p>
            </section>
        </div>
        <div class="features-row">
            <section>
                <span class="icon major fa-cloud accent4"></span>
                <h3>Sed feugiat</h3>
                <p>Integer volutpat ante et accumsan commophasellus sed aliquam feugiat lorem aliquet ut enim rutrum
                    phasellus iaculis accumsan dolore magna aliquam veroeros.</p>
            </section>
            <section>
                <span class="icon major fa-lock accent5"></span>
                <h3>Enim phasellus</h3>
                <p>Integer volutpat ante et accumsan commophasellus sed aliquam feugiat lorem aliquet ut enim rutrum
                    phasellus iaculis accumsan dolore magna aliquam veroeros.</p>
            </section>
        </div>
    </section>
    <div class="copyrights">Collect from <a href="http://www.cssmoban.com/">企业网站模板</a></div>

    <div class="row">
        <div class="6u">

            <section class="box special">
                <span class="image featured"><img src="/resource/img/blog/pic02.jpg" alt=""/></span>
                <h3>Sed lorem adipiscing</h3>
                <p>Integer volutpat ante et accumsan commophasellus sed aliquam feugiat lorem aliquet ut enim rutrum
                    phasellus iaculis accumsan dolore magna aliquam veroeros.</p>
                <ul class="actions">
                    <li><a href="#" class="button alt">Learn More</a></li>
                </ul>
            </section>

        </div>
        <div class="6u">

            <section class="box special">
                <span class="image featured"><img src="/resource/img/blog/pic03.jpg" alt=""/></span>
                <h3>Accumsan integer</h3>
                <p>Integer volutpat ante et accumsan commophasellus sed aliquam feugiat lorem aliquet ut enim rutrum
                    phasellus iaculis accumsan dolore magna aliquam veroeros.</p>
                <ul class="actions">
                    <li><a href="#" class="button alt">Learn More</a></li>
                </ul>
            </section>

        </div>
    </div>

</section>


<!-- Footer -->
<footer id="footer">
    <ul class="icons">
        <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
        <li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
        <li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
        <li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
        <li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
        <li><a href="#" class="icon fa-google-plus"><span class="label">Google+</span></a></li>
    </ul>
    <ul class="copyright">
        <li>&copy;All rights reserved.</li>
        <li> Collect from RockyRoll</li>
    </ul>
</footer>


<%@include file="/WEB-INF/jsp/common/bottomjs.jsp" %>
<script src="<%=basePath%>/resource/js/blog/jquery.dropotron.min.js"></script>
<script src="<%=basePath%>/resource/js/blog/jquery.scrollgress.min.js"></script>
<script src="<%=basePath%>/resource/js/blog/skel.min.js"></script>
<script src="<%=basePath%>/resource/js/blog/skel-layers.min.js"></script>
<script src="<%=basePath%>/resource/js/blog/init.js"></script>
</body>
</html>