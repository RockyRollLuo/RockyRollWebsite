<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/jsp/common/tag.jsp" %>
<% String basePath = request.getContextPath();%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="/WEB-INF/jsp/common/head.jsp" %>
    <link rel="stylesheet" href="<%=basePath%>/resource/css/blog/skel.css"/>
    <link rel="stylesheet" href="<%=basePath%>/resource/css/blog/style.css"/>
    <link rel="stylesheet" href="<%=basePath%>/resource/css/blog/style-wide.css"/>

    <link rel="stylesheet" href="<%=basePath%>/resource/editormd/css/editormd.css"/>
    <title>RockyRollWebsite-Blog</title>
</head>
<body class="landing">

<div class="container">
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
            <form method="post" action="/blog/write" method="post">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="input-group">
                            <div class="input-group-btn">
                                <c:choose>
                                    <c:when test="${article==null}">
                                        <button type="button" class="btn btn-primary dropdown-toggle"
                                                data-toggle="dropdown"
                                                aria-haspopup="true" aria-expanded="false" id="categoryBtn">分类
                                        </button>
                                    </c:when>
                                    <c:otherwise>
                                        <button type="button" class="btn btn-primary dropdown-toggle"
                                                data-toggle="dropdown"
                                                aria-haspopup="true" aria-expanded="false"
                                                id="categoryBtn">${article.category}
                                        </button>
                                    </c:otherwise>
                                </c:choose>

                                <ul class="dropdown-menu">
                                    <c:forEach var="category" items="${categories}">
                                        <li>
                                            <a onclick="selectCategory('${category.name}','${category.displayName}');">${category.displayName}</a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                            <input name="category" id="cateoryInput" type="hidden">
                            <c:choose>
                                <c:when test="${article==null}">
                                    <input type="text" class="form-control" placeholder="标题" name="title">
                                </c:when>
                                <c:otherwise>
                                    <input name="id" type="hidden" value="${article.id}">
                                    <input type="text" class="form-control" placeholder="标题" name="title"
                                           value="${article.title}">
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<!--editor erea-->
<div id="layout" style="width: 100%;height: 100%">
    <div id="test-editormd">
        <c:choose>
            <c:when test="${article==null}">
                <textarea style="display:none;" name="content"></textarea>
            </c:when>
            <c:otherwise>
                <textarea style="display:none;" name="content">${article.content}</textarea>
            </c:otherwise>
        </c:choose>

    </div>
</div>

<div class="row">
    <div class="col-md-6 col-md-offset-6">
        <p>
            <input type="submit" class="btn btn-primary btn-lg" role="button" value="发表">
        </p>
    </div>
    </form>
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


<%@ include file="/WEB-INF/jsp/common/bottomjs.jsp" %>
<script src="<%=basePath%>/resource/js/blog/jquery.dropotron.min.js"></script>
<script src="<%=basePath%>/resource/js/blog/jquery.scrollgress.min.js"></script>
<script src="<%=basePath%>/resource/js/blog/skel.min.js"></script>
<script src="<%=basePath%>/resource/js/blog/skel-layers.min.js"></script>
<script src="<%=basePath%>/resource/js/blog/init.js"></script>
<script src="<%=basePath%>/resource/editormd/editormd.js"></script>
<script type="text/javascript">
    var testEditor;
    $(function () {
        testEditor = editormd("test-editormd", {
            width: "100%",
            height: 640,
            syncScrolling: "single",
            path: "/resource/editormd/lib/",
            imageUpload: true,
            imageFormats: ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
            imageUploadURL: "./php/upload.php?test=dfdf"

            /*
             上传的后台只需要返回一个 JSON 数据，结构如下：
             {
             success : 0 | 1,           // 0 表示上传失败，1 表示上传成功
             message : "提示的信息，上传成功或上传失败及错误信息等。",
             url     : "图片地址"        // 上传成功时才返回
             }
             */
        });

        /*
         // or
         testEditor = editormd({
         id      : "test-editormd",
         width   : "90%",
         height  : 640,
         path    : "../lib/"
         });
         */
    });
</script>

<script>
    function selectCategory(name, displayName) {
        $("#categoryBtn").html(displayName);
        $("#cateoryInput").val(name);
    }
</script>

</body>
</html>