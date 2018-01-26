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
            <li>
                <a href="/blog/catalogue" class="icon fa-angle-down">目录</a>
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
<div class="row">
    <div class="12u">

        <!-- Default panel contents -->
        <div class="panel-heading">panel title</div>
        <div class="panel-body">
            <p><a class="btn btn-primary btn-sm" href="/blog/write" role="button">写博客</a></p>
        </div>
        <!-- Table -->
        <section class="box">
            <h3>文章列表</h3>
            <h4>JavaWeb相关技术</h4>
            <div class="table-wrapper">
                <table>
                    <thead>
                    <tr>
                        <th>编号</th>
                        <th>标题</th>
                        <th>摘要</th>
                        <th style="text-align: center" colspan="2">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach begin="0" var="article" items="${articles}" step="1">
                        <tr>
                            <td>${article.id}</td>
                            <td>${article.title}</td>
                            <td>${article.summary}</td>
                            <td><a href="/sang/update/${article.id}">修改</a></td>
                            <td><a href="/sang/delete/${article.id}">删除</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                    <tfoot>
                    <tr>
                        <td colspan="4" class="left">表末说明</td>
                    </tr>
                    </tfoot>
                </table>
            </div>
        </section>
    </div>
</div>

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