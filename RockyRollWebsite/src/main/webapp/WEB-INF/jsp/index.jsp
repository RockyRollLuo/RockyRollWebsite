<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="utf-8" %>
<!DOCTYPE html>
<head>
    <%@include file="common/head.jsp" %>
    <title>RockyRoll Website</title>
</head>
<body id="body">

<!-- preloader -->
<div id="preloader">
    <img src="<%=request.getContextPath()%>/resource/img/preloader.gif" alt="Preloader">
</div>

<%--=====================================header:每页的页眉================================================--%>
<header id="navigation" class="navbar-fixed-top navbar">
    <div class="container">
        <div class="navbar-header">
            <!-- responsive nav button -->
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <i class="fa fa-bars fa-2x"></i>
            </button>
            <!-- /responsive nav button -->

            <!-- logo -->
            <a class="navbar-brand" href="#body">
                <h1 id="logo">
                    <img src="<%=request.getContextPath()%>/resource/img/logo.png" alt="Brandi"><%--点击可以回首页--%>
                </h1>
            </a>
            <!-- /logo -->
        </div>

        <!-- main nav -->
        <nav class="collapse navbar-collapse navbar-right" role="navigation">
            <ul id="nav" class="nav navbar-nav">
                <li class="current"><a href="#body">首页</a></li>
                <li><a href="#features">内容</a></li>
                <li><a href="#works">图片</a></li>
                <li><a href="#team">Team</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>
        </nav>
        <!-- /main nav -->

    </div>
</header>


<%--=====================================1 首页================================================--%>
<section id="slider">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

        <!-- Indicators bullet -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>
        <!-- End Indicators bullet -->

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">

            <!-- single slide -->
            <div class="item active" style="background-image: url(<%=request.getContextPath()%>/resource/img/banner.jpg);">
                <div class="carousel-caption">
                    <h2 data-wow-duration="700ms" data-wow-delay="500ms" class="wow bounceInDown animated">Meet<span> RockyRoll</span>!</h2>
                    <h3 data-wow-duration="1000ms" class="wow slideInLeft animated"><span class="color">Happy! </span> Create Gorgous</h3>
                    <p data-wow-duration="1000ms" class="wow slideInRight animated">Every thing is being done here</p>

                    <!--联系方式-->
                    <ul class="social-links text-center">
                        <li><a href=""><i class="fa fa-twitter fa-lg"></i></a></li>
                        <li><a href=""><i class="fa fa-facebook fa-lg"></i></a></li>
                        <li><a href=""><i class="fa fa-google-plus fa-lg"></i></a></li>
                        <li><a href=""><i class="fa fa-dribbble fa-lg"></i></a></li>
                    </ul>
                </div>
            </div>
            <!-- end single slide -->

            <!-- single slide -->
            <div class="item" style="background-image: url(<%=request.getContextPath()%>/resource/img/banner.jpg);">
                <div class="carousel-caption">
                    <h2 data-wow-duration="500ms" data-wow-delay="500ms" class="wow bounceInDown animated">Work<span> Statatioin</span></h2>
                    <h3 data-wow-duration="500ms" class="wow slideInLeft animated"><span class="color">Creative</span> is possible</h3>
                    <p data-wow-duration="500ms" class="wow slideInRight animated">Every thing is being done here</p>

                    <!--联系方式-->
                    <ul class="social-links text-center">
                        <li><a href=""><i class="fa fa-twitter fa-lg"></i></a></li>
                        <li><a href=""><i class="fa fa-facebook fa-lg"></i></a></li>
                        <li><a href=""><i class="fa fa-google-plus fa-lg"></i></a></li>
                        <li><a href=""><i class="fa fa-dribbble fa-lg"></i></a></li>
                    </ul>
                </div>
            </div>
            <!-- end single slide -->

            <!-- single slide -->
            <div class="item" style="background-image: url(<%=request.getContextPath()%>/resource/img/banner.jpg);">
                <div class="carousel-caption">
                    <h2 data-wow-duration="500ms" data-wow-delay="500ms" class="wow bounceInDown animated">Work<span> Statatioin</span></h2>
                    <h3 data-wow-duration="500ms" class="wow slideInLeft animated"><span class="color">Creative</span> is possible</h3>
                    <p data-wow-duration="500ms" class="wow slideInRight animated">Every thing is being done here</p>

                </div>
            </div>
            <!-- end single slide -->


        </div>
        <!-- End Wrapper for slides -->

    </div>
</section>

<%--=====================================1 首页 End================================================--%>


<%--=====================================2 内容================================================--%>

<section id="features" class="features">
    <div class="container">
        <div class="row">

            <div class="sec-title text-center mb50 wow bounceInDown animated" data-wow-duration="500ms">
                <h2>内容</h2>
                <div class="devider"><i class="fa fa-heart-o fa-lg"></i></div>
            </div>

            <!-- service item -->
            <div class="col-md-4 wow fadeInLeft" data-wow-duration="500ms">
                <div class="service-item">
                    <div class="service-icon">
                        <i class="fa fa-github fa-2x"></i>
                    </div>

                    <div class="service-desc">
                        <h3>兴趣</h3>
                        <p>代码和工程<br/></p>
                    </div>
                </div>
            </div>
            <!-- end service item -->

            <!-- service item -->
            <div class="col-md-4 wow fadeInUp" data-wow-duration="500ms" data-wow-delay="500ms">
                <div class="service-item">
                    <div class="service-icon">
                        <i class="fa fa-pencil fa-2x"></i>
                    </div>

                    <div class="service-desc">
                        <h3>工作</h3>
                        <p>学习内容<br/>论文研究<br/></p>
                    </div>
                </div>
            </div>
            <!-- end service item -->

            <!-- service item -->
            <div class="col-md-4 wow fadeInRight" data-wow-duration="500ms"  data-wow-delay="900ms">
                <div class="service-item">
                    <div class="service-icon">
                        <i class="fa fa-bullhorn fa-2x"></i>
                    </div>

                    <div class="service-desc">
                        <h3>娱乐</h3>
                        <p>音乐与歌曲<br/>视频与电影<br/>文章与故事</p>
                    </div>
                </div>
            </div>
            <!-- end service item -->

        </div>
    </div>
</section>

<%--=====================================2 Features End================================================--%>


<%--=====================================3 Works================================================--%>
<section id="works" class="works clearfix">
    <div class="container">
        <div class="row">

            <div class="sec-title text-center">
                <h2>图片</h2>
                <div class="devider"><i class="fa fa-heart-o fa-lg"></i></div>
            </div>

            <div class="sec-sub-title text-center">
                <p>飞鸿雪泥，不过留下的是一些爪印，而我，是不常在雪泥里休息的，我所飞过的天空并没有留下痕迹。</p>
            </div>

            <div class="work-filter wow fadeInRight animated" data-wow-duration="500ms">
                <ul class="text-center">
                    <li><a href="javascript:;" data-filter="all" class="active filter">总览</a></li>
                    <li><a href="javascript:;" data-filter=".branding" class="filter">人物</a></li>
                    <li><a href="javascript:;" data-filter=".web" class="filter">风景</a></li>
                    <li><a href="javascript:;" data-filter=".logo-design" class="filter">物品</a></li>
                    <li><a href="javascript:;" data-filter=".photography" class="filter">回忆</a></li>
                </ul>
            </div>

        </div>
    </div>

    <div class="project-wrapper">

        <figure class="mix work-item branding">
            <img src="<%=request.getContextPath()%>/resource/img/works/item-1.jpg" alt="">
            <figcaption class="overlay">
                <a class="fancybox" rel="works" title="Write Your Image Caption Here" href="<%=request.getContextPath()%>/resource/img/works/item-1.jpg"><i class="fa fa-eye fa-lg"></i></a>
                <h4>Labore et dolore magnam</h4>
                <p>Photography</p>
            </figcaption>
        </figure>

        <figure class="mix work-item web">
            <img src="<%=request.getContextPath()%>/resource/img/works/item-2.jpg" alt="">
            <figcaption class="overlay">
                <a class="fancybox" rel="works" title="Write Your Image Caption Here" href="<%=request.getContextPath()%>/resource/img/works/item-2.jpg"><i class="fa fa-eye fa-lg"></i></a>
                <h4>Labore et dolore magnam</h4>
                <p>Photography</p>
            </figcaption>
        </figure>

        <figure class="mix work-item logo-design">
            <img src="<%=request.getContextPath()%>/resource/img/works/item-3.jpg" alt="">
            <figcaption class="overlay">
                <a class="fancybox" rel="works" title="Write Your Image Caption Here" href="<%=request.getContextPath()%>/resource/img/works/item-3.jpg"><i class="fa fa-eye fa-lg"></i></a>
                <h4>Labore et dolore magnam</h4>
                <p>Photography</p>
            </figcaption>
        </figure>

        <figure class="mix work-item photography">
            <img src="<%=request.getContextPath()%>/resource/img/works/item-4.jpg" alt="">
            <figcaption class="overlay">
                <a class="fancybox" rel="works" title="Write Your Image Caption Here" href="<%=request.getContextPath()%>/resource/img/works/item-4.jpg"><i class="fa fa-eye fa-lg"></i></a>
                <h4>Labore et dolore magnam</h4>
                <p>Photography</p>
            </figcaption>
        </figure>

        <figure class="mix work-item branding">
            <img src="<%=request.getContextPath()%>/resource/img/works/item-5.jpg" alt="">
            <figcaption class="overlay">
                <a class="fancybox" rel="works" title="Write Your Image Caption Here" href="<%=request.getContextPath()%>/resource/img/works/item-5.jpg"><i class="fa fa-eye fa-lg"></i></a>
                <h4>Labore et dolore magnam</h4>
                <p>Photography</p>
            </figcaption>
        </figure>

        <figure class="mix work-item web">
            <img src="<%=request.getContextPath()%>/resource/img/works/item-6.jpg" alt="">
            <figcaption class="overlay">
                <a class="fancybox" rel="works" title="Write Your Image Caption Here" href="<%=request.getContextPath()%>/resource/img/works/item-6.jpg"><i class="fa fa-eye fa-lg"></i></a>
                <h4>Labore et dolore magnam</h4>
                <p>Photography</p>
            </figcaption>
        </figure>

        <figure class="mix work-item logo-design">
            <img src="<%=request.getContextPath()%>/resource/img/works/item-7.jpg" alt="">
            <figcaption class="overlay">
                <a class="fancybox" rel="works" title="Write Your Image Caption Here" href="<%=request.getContextPath()%>/resource/img/works/item-7.jpg"><i class="fa fa-eye fa-lg"></i></a>
                <h4>Labore et dolore magnam</h4>
                <p>Photography</p>
            </figcaption>
        </figure>

        <figure class="mix work-item photography">
            <img src="<%=request.getContextPath()%>/resource/img/works/item-8.jpg" alt="">
            <figcaption class="overlay">
                <a class="fancybox" rel="works" title="Write Your Image Caption Here" href="<%=request.getContextPath()%>/resource/img/works/item-8.jpg"><i class="fa fa-eye fa-lg"></i></a>
                <h4>Labore et dolore magnam</h4>
                <p>Photography</p>
            </figcaption>
        </figure>

    </div>


</section>
<div class="copyrights">Collect from RockyRoll</div>

<%--=====================================3 Works end================================================--%>


<%--=====================================4 Team================================================--%>
<section id="team" class="team">
    <div class="container">
        <div class="row">

            <div class="sec-title text-center wow fadeInUp animated" data-wow-duration="700ms">
                <h2>Meet Our Team</h2>
                <div class="devider"><i class="fa fa-heart-o fa-lg"></i></div>
            </div>

            <div class="sec-sub-title text-center wow fadeInRight animated" data-wow-duration="500ms">
                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore</p>
            </div>

            <!-- single member -->
            <figure class="team-member col-md-3 col-sm-6 col-xs-12 text-center wow fadeInUp animated" data-wow-duration="500ms">
                <div class="member-thumb">
                    <img src="<%=request.getContextPath()%>/resource/img/team/member-1.png" alt="Team Member" class="img-responsive">
                    <figcaption class="overlay">
                        <h5>voluptatem quia voluptas </h5>
                        <p>sit aspernatur aut odit aut fugit,</p>
                        <ul class="social-links text-center">
                            <li><a href=""><i class="fa fa-twitter fa-lg"></i></a></li>
                            <li><a href=""><i class="fa fa-facebook fa-lg"></i></a></li>
                            <li><a href=""><i class="fa fa-google-plus fa-lg"></i></a></li>
                        </ul>
                    </figcaption>
                </div>
                <h4>John Filmr Doe</h4>
                <span>Managing Director</span>
            </figure>
            <!-- end single member -->

            <!-- single member -->
            <figure class="team-member col-md-3 col-sm-6 col-xs-12 text-center wow fadeInUp animated" data-wow-duration="500ms" data-wow-delay="300ms">
                <div class="member-thumb">
                    <img src="<%=request.getContextPath()%>/resource/img/team/member-2.png" alt="Team Member" class="img-responsive">
                    <figcaption class="overlay">
                        <h5>voluptatem quia voluptas </h5>
                        <p>sit aspernatur aut odit aut fugit,</p>
                        <ul class="social-links text-center">
                            <li><a href=""><i class="fa fa-twitter fa-lg"></i></a></li>
                            <li><a href=""><i class="fa fa-facebook fa-lg"></i></a></li>
                            <li><a href=""><i class="fa fa-google-plus fa-lg"></i></a></li>
                        </ul>
                    </figcaption>
                </div>
                <h4>Martin Matrone</h4>
                <span>Lead Developer</span>
            </figure>
            <!-- end single member -->

            <!-- single member -->
            <figure class="team-member col-md-3 col-sm-6 col-xs-12 text-center wow fadeInUp animated" data-wow-duration="500ms" data-wow-delay="600ms">
                <div class="member-thumb">
                    <img src="<%=request.getContextPath()%>/resource/img/team/member-3.png" alt="Team Member" class="img-responsive">
                    <figcaption class="overlay">
                        <h5>voluptatem quia voluptas </h5>
                        <p>sit aspernatur aut odit aut fugit,</p>
                        <ul class="social-links text-center">
                            <li><a href=""><i class="fa fa-twitter fa-lg"></i></a></li>
                            <li><a href=""><i class="fa fa-facebook fa-lg"></i></a></li>
                            <li><a href=""><i class="fa fa-google-plus fa-lg"></i></a></li>
                        </ul>
                    </figcaption>
                </div>
                <h4>Steve Flaulkin</h4>
                <span>Sr. UI Designer</span>
            </figure>
            <!-- end single member -->

            <!-- single member -->
            <figure class="team-member col-md-3 col-sm-6 col-xs-12 text-center wow fadeInUp animated" data-wow-duration="500ms" data-wow-delay="900ms">
                <div class="member-thumb">
                    <img src="<%=request.getContextPath()%>/resource/img/team/member-1.png" alt="Team Member" class="img-responsive">
                    <figcaption class="overlay">
                        <h5>voluptatem quia voluptas </h5>
                        <p>sit aspernatur aut odit aut fugit,</p>
                        <ul class="social-links text-center">
                            <li><a href=""><i class="fa fa-twitter fa-lg"></i></a></li>
                            <li><a href=""><i class="fa fa-facebook fa-lg"></i></a></li>
                            <li><a href=""><i class="fa fa-google-plus fa-lg"></i></a></li>
                        </ul>
                    </figcaption>
                </div>
                <h4>John Filmr Doe</h4>
                <span>Managing Director</span>
            </figure>
            <!-- end single member -->

        </div>
    </div>
</section>
<%--=====================================4 Team end================================================--%>



<%--===================================== fact================================================--%>
<section id="facts" class="facts">
    <div class="parallax-overlay">
        <div class="container">
            <div class="row number-counters">

                <div class="sec-title text-center mb50 wow rubberBand animated" data-wow-duration="1000ms">
                    <h2>Some Fun Facts</h2>
                    <div class="devider"><i class="fa fa-heart-o fa-lg"></i></div>
                </div>

                <!-- first count item -->
                <div class="col-md-3 col-sm-6 col-xs-12 text-center wow fadeInUp animated" data-wow-duration="500ms">
                    <div class="counters-item">
                        <i class="fa fa-clock-o fa-3x"></i>
                        <strong data-to="3200">0</strong>
                        <!-- Set Your Number here. i,e. data-to="56" -->
                        <p>Hours of Work</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12 text-center wow fadeInUp animated" data-wow-duration="500ms" data-wow-delay="300ms">
                    <div class="counters-item">
                        <i class="fa fa-users fa-3x"></i>
                        <strong data-to="120">0</strong>
                        <!-- Set Your Number here. i,e. data-to="56" -->
                        <p>Satisfied Clients</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12 text-center wow fadeInUp animated" data-wow-duration="500ms" data-wow-delay="600ms">
                    <div class="counters-item">
                        <i class="fa fa-rocket fa-3x"></i>
                        <strong data-to="360">0</strong>
                        <!-- Set Your Number here. i,e. data-to="56" -->
                        <p> Projects Delivered </p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12 text-center wow fadeInUp animated" data-wow-duration="500ms" data-wow-delay="900ms">
                    <div class="counters-item">
                        <i class="fa fa-trophy fa-3x"></i>
                        <strong data-to="6454">0</strong>
                        <!-- Set Your Number here. i,e. data-to="56" -->
                        <p>Awards Won</p>
                    </div>
                </div>
                <!-- end first count item -->

            </div>
        </div>
    </div>
</section>
<%--=====================================facts================================================--%>


<%--=====================================Contact================================================--%>

<section id="contact" class="contact">
    <div class="container">
        <div class="row mb50">

            <div class="sec-title text-center mb50 wow fadeInDown animated" data-wow-duration="500ms">
                <h2>Let’s Discuss</h2>
                <div class="devider"><i class="fa fa-heart-o fa-lg"></i></div>
            </div>

            <div class="sec-sub-title text-center wow rubberBand animated" data-wow-duration="1000ms">
                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore</p>
            </div>

            <!-- contact address -->
            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12 wow fadeInLeft animated" data-wow-duration="500ms">
                <div class="contact-address">
                    <h3>Cras at ultrices erat, sed vulputate!</h3>
                    <p>2345 Setwant natrer, 1234,</p>
                    <p>Washington. United States.</p>
                    <p>(401) 1234 567</p>
                </div>
            </div>
            <!-- end contact address -->

            <!-- contact form -->
            <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12 wow fadeInDown animated" data-wow-duration="500ms" data-wow-delay="300ms">
                <div class="contact-form">
                    <h3>Say hello!</h3>
                    <form action="#" id="contact-form">
                        <div class="input-group name-email">
                            <div class="input-field">
                                <input type="text" name="name" id="name" placeholder="Name" class="form-control">
                            </div>
                            <div class="input-field">
                                <input type="email" name="email" id="email" placeholder="Email" class="form-control">
                            </div>
                        </div>
                        <div class="input-group">
                            <textarea name="message" id="message" placeholder="Message" class="form-control"></textarea>
                        </div>
                        <div class="input-group">
                            <input type="submit" id="form-submit" class="pull-right" value="Send message">
                        </div>
                    </form>
                </div>
            </div>
            <!-- end contact form -->

            <!-- footer social links -->
            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-12 wow fadeInRight animated" data-wow-duration="500ms" data-wow-delay="600ms">
                <ul class="footer-social">
                    <li><a href="#Themefisher"><i class="fa fa-behance fa-2x"></i></a></li>
                    <li><a href="#/Themefisher"><i class="fa fa-twitter fa-2x"></i></a></li>
                    <li><a href="#/themefisher"><i class="fa fa-dribbble fa-2x"></i></a></li>
                    <li><a href="#/Themefisher"><i class="fa fa-facebook fa-2x"></i></a></li>
                </ul>
            </div>
            <!-- end footer social links -->

        </div>
    </div>



</section>

<%--=====================================Contacts end================================================--%>


<footer id="footer" class="footer">
    <div class="container">
        <div class="row">

            <div class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp animated" data-wow-duration="500ms">
                <div class="footer-single">
                    <img src="<%=request.getContextPath()%>/resource/img/footer-logo.png" alt="">
                    <p>eusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                </div>
            </div>

            <div class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp animated" data-wow-duration="500ms" data-wow-delay="300ms">
                <div class="footer-single">
                    <h6>Subscribe </h6>
                    <form action="#" class="subscribe">
                        <input type="text" name="subscribe" id="subscribe">
                        <input type="submit" value="&#8594;" id="subs">
                    </form>
                    <p>eusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                </div>
            </div>

            <div class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp animated" data-wow-duration="500ms" data-wow-delay="600ms">
                <div class="footer-single">
                    <h6>Explore</h6>
                    <ul>
                        <li><a href="#">Inside Us</a></li>
                        <li><a href="#">Flickr</a></li>
                        <li><a href="#">Google</a></li>
                        <li><a href="#">Forum</a></li>
                    </ul>
                </div>
            </div>

            <div class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp animated" data-wow-duration="500ms" data-wow-delay="900ms">
                <div class="footer-single">
                    <h6>Support</h6>
                    <ul>
                        <li><a href="#">Contact Us</a></li>
                        <li><a href="#">Market Blog</a></li>
                        <li><a href="#">Help Center</a></li>
                        <li><a href="#">Pressroom</a></li>
                    </ul>
                </div>
            </div>

        </div>
        <div class="row">
            <div class="col-md-12">
                <p class="copyright text-center">
                    Copyright © 2018  All rights reserved. Designed & developed by RockyRoll
                </p>
            </div>
        </div>
    </div>
</footer>

<a href="javascript:void(0);" id="back-top"><i class="fa fa-angle-up fa-3x"></i></a>


<%@include file="common/bottomjs.jsp" %>

<script>
    var wow = new WOW ({
            boxClass:     'wow',      // animated element css class (default is wow)
            animateClass: 'animated', // animation css class (default is animated)
            offset:       120,          // distance to the element when triggering the animation (default is 0)
            mobile:       false,       // trigger animations on mobile devices (default is true)
            live:         true        // act on asynchronously loaded content (default is true)
        }
    );
    wow.init();
</script>


<script type="text/javascript">
    $(function(){
        /* ========================================================================= */
        /*	Contact Form
        /* ========================================================================= */

        $('#contact-form').validate({
            rules: {
                name: {
                    required: true,
                    minlength: 2
                },
                email: {
                    required: true,
                    email: true
                },
                message: {
                    required: true
                }
            },
            messages: {
                name: {
                    required: "come on, you have a name don't you?",
                    minlength: "your name must consist of at least 2 characters"
                },
                email: {
                    required: "no email, no message"
                },
                message: {
                    required: "um...yea, you have to write something to send this form.",
                    minlength: "thats all? really?"
                }
            },
            submitHandler: function(form) {
                $(form).ajaxSubmit({
                    type:"POST",
                    data: $(form).serialize(),
                    url:"process.php",
                    success: function() {
                        $('#contact-form :input').attr('disabled', 'disabled');
                        $('#contact-form').fadeTo( "slow", 0.15, function() {
                            $(this).find(':input').attr('disabled', 'disabled');
                            $(this).find('label').css('cursor','default');
                            $('#success').fadeIn();
                        });
                    },
                    error: function() {
                        $('#contact-form').fadeTo( "slow", 0.15, function() {
                            $('#error').fadeIn();
                        });
                    }
                });
            }
        });
    });
</script>
</body>
</html>
