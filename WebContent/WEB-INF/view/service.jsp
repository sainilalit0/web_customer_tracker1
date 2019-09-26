<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  
	<!-- Core Stylesheet -->
    <link type="text/css"  rel="stylesheet"  href="${pageContext.request.contextPath}/resources/css/style.css" />
    <link type="text/css"  rel="stylesheet"  href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css" />
    <link type="text/css"  rel="stylesheet"  href="${pageContext.request.contextPath}/resources/css/animate.css" />
    <link type="text/css"  rel="stylesheet"  href="${pageContext.request.contextPath}/resources/css/classy-nav.css" />
    <link type="text/css"  rel="stylesheet"  href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
    <link type="text/css"  rel="stylesheet"  href="${pageContext.request.contextPath}/resources/css/magnific-popup.css" />
    <link type="text/css"  rel="stylesheet"  href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" />
    <link type="text/css"  rel="stylesheet"  href="${pageContext.request.contextPath}/resources/scss/style.min.scss" />
    
     <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/resources/img/core-img/favicon.ico">
    <!-- ##### All Javascript Script ##### -->
    <link   rel="js"  href="${pageContext.request.contextPath}/resources/js/active.js" />
    <link   rel="js"  href="${pageContext.request.contextPath}/resources/js/jquery/jquery-2.2.4.min.js" />
    <link   rel="js"  href="${pageContext.request.contextPath}/resources/js/bootstrap/popper.min.js" />
    <link   rel="js"  href="${pageContext.request.contextPath}/resources/js/bootstrap/bootstrap.min.js" />
    <link   rel="js"  href="${pageContext.request.contextPath}/resources/js/plugins/plugins.js" />
    <link   rel="js"  href="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.js" />
    <link   rel="js"  href="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.js.map" />
    <link   rel="js"  href="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js" />
    <link   rel="js"  href="${pageContext.request.contextPath}/resources/js/bootstrap.js" />
    <link   rel="js"  href="${pageContext.request.contextPath}/resources/js/bootstrap.js.map" />
    <link   rel="js"  href="${pageContext.request.contextPath}/resources/js/bootstrap.min.js.map" />
    
</head>
<body>
	<!-- ##### Header Area Start ##### -->
    <header class="header-area">
        <!-- Navbar Area -->
        <div class="fitness-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="fitnessNav">

                        <!-- Nav brand -->
                        <a href="index.jsp" class="nav-brand"><img src="resources/img/core-img/logo.png" alt=""></a>

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- close btn -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                    <li><a href="index.jsp">Home</a></li>
                                    <li><a href="about-us.jsp">About Us</a></li>
                                    <li><a href="blog.jsp">News</a></li>
                                    <li><a href="service.jsp">News</a></li>
                                    <li><a href="contact.jsp">Contact</a></li>
                                </ul>

                                <!-- Call Button -->
                                <a href="#" class="fitness-btn menu-btn ml-30">Call:  +7829793380</a>

                            </div>
                            <!-- Nav End -->
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->

    <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(/resources/img/bg-img/breadcumb.jpg);">
        <div class="bradcumbContent">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h2>Services</h2>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Services</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Service Area Start ##### -->
    <div class="fitness-services-area section-padding-100-0">
        <div class="container">
            <div class="row">

                <!-- Single Service Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-service-area mb-100">
                        <div class="course-content d-flex align-items-center">
                            <!-- Course Icon -->
                            <div class="course-icon d-flex align-items-center justify-content-center">
                                <img src="/resources/img/core-img/dumbbell.png" alt="">
                            </div>
                            <h4>Business School</h4>
                        </div>
                        <p>Donec id mattis est. Proin nunc sapien, gravida ut sapien ut, ultrices faucibus sapien. Proin vehicula varius ex, vel feugiat massa.</p>
                    </div>
                </div>

                <!-- Single Service Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-service-area mb-100">
                        <div class="course-content d-flex align-items-center">
                            <!-- Course Icon -->
                            <div class="course-icon d-flex align-items-center justify-content-center">
                                <img src="resources/img/core-img/slim-down.png" alt="">
                            </div>
                            <h4>Fitness Pro</h4>
                        </div>
                        <p>Proin nunc sapien, gravida ut sapien ut, ultrices faucibus sapien. Proin vehicula varius ex, vel feugiat massa scelerisque id.</p>
                    </div>
                </div>

                <!-- Single Service Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-service-area mb-100">
                        <div class="course-content d-flex align-items-center">
                            <!-- Course Icon -->
                            <div class="course-icon d-flex align-items-center justify-content-center">
                                <img src="resources/img/core-img/lotus-position.png" alt="">
                            </div>
                            <h4>Yoga Courses</h4>
                        </div>
                        <p>Nullam vulputate a lectus non molestie. Duis at lobortis neque, in maximus leo. Donec nec blandit ex, in finibus tortor.</p>
                    </div>
                </div>

                <!-- Single Service Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-service-area mb-100">
                        <div class="course-content d-flex align-items-center">
                            <!-- Course Icon -->
                            <div class="course-icon d-flex align-items-center justify-content-center">
                                <img src="resources/img/core-img/apple.png" alt="">
                            </div>
                            <h4>Diet Specialists</h4>
                        </div>
                        <p>Donec id mattis est. Proin nunc sapien, gravida ut sapien ut, ultrices faucibus sapien. Proin vehicula varius ex, vel feugiat massa.</p>
                    </div>
                </div>

                <!-- Single Service Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-service-area mb-100">
                        <div class="course-content d-flex align-items-center">
                            <!-- Course Icon -->
                            <div class="course-icon d-flex align-items-center justify-content-center">
                                <img src="resources/img/core-img/swimming.png" alt="">
                            </div>
                            <h4>Swimming Pool</h4>
                        </div>
                        <p>Proin nunc sapien, gravida ut sapien ut, ultrices faucibus sapien. Proin vehicula varius ex, vel feugiat massa scelerisque id.</p>
                    </div>
                </div>

                <!-- Single Service Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-service-area mb-100">
                        <div class="course-content d-flex align-items-center">
                            <!-- Course Icon -->
                            <div class="course-icon d-flex align-items-center justify-content-center">
                                <img src="resources/img/core-img/stationary-bike.png" alt="">
                            </div>
                            <h4>Spinning Class</h4>
                        </div>
                        <p>Nullam vulputate a lectus non molestie. Duis at lobortis neque, in maximus leo. Donec nec blandit ex, in finibus tortor.</p>
                    </div>
                </div>

                <!-- Single Service Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-service-area mb-100">
                        <div class="course-content d-flex align-items-center">
                            <!-- Course Icon -->
                            <div class="course-icon d-flex align-items-center justify-content-center">
                                <img src="resources/img/core-img/apple.png" alt="">
                            </div>
                            <h4>Cycling</h4>
                        </div>
                        <p>Donec id mattis est. Proin nunc sapien, gravida ut sapien ut, ultrices faucibus sapien. Proin vehicula varius ex, vel feugiat massa.</p>
                    </div>
                </div>

                <!-- Single Service Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-service-area mb-100">
                        <div class="course-content d-flex align-items-center">
                            <!-- Course Icon -->
                            <div class="course-icon d-flex align-items-center justify-content-center">
                                <img src="resources/img/core-img/swimming.png" alt="">
                            </div>
                            <h4>Outdoor Yoga</h4>
                        </div>
                        <p>Proin nunc sapien, gravida ut sapien ut, ultrices faucibus sapien. Proin vehicula varius ex, vel feugiat massa scelerisque id.</p>
                    </div>
                </div>

                <!-- Single Service Area -->
                <div class="col-12 col-sm-6 col-lg-4">
                    <div class="single-service-area mb-100">
                        <div class="course-content d-flex align-items-center">
                            <!-- Course Icon -->
                            <div class="course-icon d-flex align-items-center justify-content-center">
                                <img src="resources/img/core-img/stationary-bike.png" alt="">
                            </div>
                            <h4>Meditation</h4>
                        </div>
                        <p>Nullam vulputate a lectus non molestie. Duis at lobortis neque, in maximus leo. Donec nec blandit ex, in finibus tortor.</p>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- ##### Service Area End ##### -->

    <!-- ##### Skilss Area Start ##### -->
    <section class="skills-area section-padding-100-0 clearfix bg-img bg-overlay bg-fixed" style="background-image: url(resources/img/bg-img/bg-1.jpg);">
        <div class="container">
            <div class="row">

                <!-- Single Skills Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-skils-area mb-100 wow fadeInUp" data-wow-delay="100ms">
                        <div id="circle" class="circle" data-value="0.75">
                            <div class="skills-text">
                                <span>75%</span>
                                <h6>Training</h6>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single Skills Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-skils-area mb-100 wow fadeInUp" data-wow-delay="300ms">
                        <div id="circle2" class="circle" data-value="0.50">
                            <div class="skills-text">
                                <span>50%</span>
                                <h6>Endurance</h6>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single Skills Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-skils-area mb-100 wow fadeInUp" data-wow-delay="500ms">
                        <div id="circle3" class="circle" data-value="0.90">
                            <div class="skills-text">
                                <span>90%</span>
                                <h6>Commitment</h6>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Single Skills Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-skils-area mb-100 wow fadeInUp" data-wow-delay="700ms">
                        <div id="circle4" class="circle" data-value="1">
                            <div class="skills-text">
                                <span>100%</span>
                                <h6>Professionals</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Skilss Area End ##### -->

    <!-- ##### Pricing Table Area Start ##### -->
    <div class="fitness-pricing-table-area service-page section-padding-100-0">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading">
                        <h6>Fitness Gym</h6>
                        <h2>Choose a Class</h2>
                    </div>
                </div>
            </div>

            <div class="row">

                <!-- Single Price Table -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-price-table mb-100">
                        <img src="img/bg-img/bg-8.jpg" alt="">
                        <div class="price-table-content">
                            <!-- price -->
                            <h2 class="price">
                                1500 Rs<span>/ Month</span>
                            </h2>
                            <h5>Woman Fitness Class</h5>
                        </div>
                    </div>
                </div>

                <!-- Single Price Table -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-price-table mb-100">
                        <img src="img/bg-img/bg-9.jpg" alt="">
                        <div class="price-table-content">
                            <!-- price -->
                            <h2 class="price">
                                1700 Rs<span>/ Month</span>
                            </h2>
                            <h5>Spinning Class + BONUS</h5>
                        </div>
                    </div>
                </div>

                <!-- Single Price Table -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-price-table mb-100">
                        <img src="img/bg-img/bg-10.jpg" alt="">
                        <div class="price-table-content">
                            <!-- price -->
                            <h2 class="price">
                                1900 Rs<span>/ Month</span>
                            </h2>
                            <h5>All Inclusive Gym</h5>
                        </div>
                    </div>
                </div>

                <!-- Single Price Table -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-price-table mb-100">
                        <img src="img/bg-img/bg-14.jpg" alt="">
                        <div class="price-table-content">
                            <!-- price -->
                            <h2 class="price">
                                2000 Rs<span>/ Month</span>
                            </h2>
                            <h5>Woman Fitness Class</h5>
                        </div>
                    </div>
                </div>

                <!-- Single Price Table -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-price-table mb-100">
                        <img src="img/bg-img/bg-15.jpg" alt="">
                        <div class="price-table-content">
                            <!-- price -->
                            <h2 class="price">
                                2100 RS<span>/ Month</span>
                            </h2>
                            <h5>Spinning Class + BONUS</h5>
                        </div>
                    </div>
                </div>

                <!-- Single Price Table -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-price-table mb-100">
                        <img src="img/bg-img/bg-16.jpg" alt="">
                        <div class="price-table-content">
                            <!-- price -->
                            <h2 class="price">
                                2200 Rs<span>/ Month</span>
                            </h2>
                            <h5>All Inclusive Gym</h5>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- ##### Pricing Table Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area section-padding-100-0 bg-img bg-overlay" style="background-image: url(resources/img/bg-img/bg-11.jpg);">

        <div class="main-footer-area">
            <div class="container">
                <div class="row">

                    <!-- Footer Widget Area -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="footer-widget-area mb-50">
                            <!-- Widget Title -->
                            <div class="widget-title">
                                <a href="#"><img src="resources/img/core-img/logo.png" alt=""></a>
                            </div>
                            <p class="mb-30">Proin nunc sapien, gravida ut sapien ut, ultrices faucibus sapien. Proin vehicula varius ex, vel feugiat massa scelerisque id. Nullam vulputate a lectus non molestie. Duis at lobortis neque.</p>
                            <!-- Social Info -->
                            <div class="footer-social-info">
                                <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>

                    <!-- Footer Widget Area -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="footer-widget-area mb-50">
                            <!-- Widget Title -->
                            <div class="widget-title">
                                <h6>testimonials</h6>
                            </div>

                            <!-- Testimonials Slides -->
                            <div class="testimonials-slides owl-carousel">

                                <div class="single-slide">
                                    <!-- Single Testimonial -->
                                    <div class="single-testimonial">
                                        <p> Donec molestie tincidunt tellus sit amet aliquet. Proin auctor nisi ut purus</p>
                                        <span>Michael Smith</span>
                                    </div>
                                    <!-- Single Testimonial -->
                                    <div class="single-testimonial">
                                        <p> Molestie tincidunt tellus sit amet aliquet. Proin auctor nisi ut purus</p>
                                        <span>Julia Williams</span>
                                    </div>
                                </div>

                                <div class="single-slide">
                                    <!-- Single Testimonial -->
                                    <div class="single-testimonial">
                                        <p> Donec molestie tincidunt tellus sit amet aliquet. Proin auctor nisi ut purus</p>
                                        <span>Michael Smith</span>
                                    </div>
                                    <!-- Single Testimonial -->
                                    <div class="single-testimonial">
                                        <p> Molestie tincidunt tellus sit amet aliquet. Proin auctor nisi ut purus</p>
                                        <span>Julia Williams</span>
                                    </div>
                                </div>

                                <div class="single-slide">
                                    <!-- Single Testimonial -->
                                    <div class="single-testimonial">
                                        <p> Donec molestie tincidunt tellus sit amet aliquet. Proin auctor nisi ut purus</p>
                                        <span>Michael Smith</span>
                                    </div>
                                    <!-- Single Testimonial -->
                                    <div class="single-testimonial">
                                        <p> Molestie tincidunt tellus sit amet aliquet. Proin auctor nisi ut purus</p>
                                        <span>Julia Williams</span>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                    <!-- Footer Widget Area -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="footer-widget-area mb-50">
                            <div class="widget-title">
                                <h6>Classes</h6>
                            </div>

                            <nav>
                                <ul class="fitness-classes">
                                    <li><a href="#">Bodybuilding Class</a></li>
                                    <li><a href="#">Fitness Class</a></li>
                                    <li><a href="#">Yoga Courses</a></li>
                                    <li><a href="#">Dumbell Class</a></li>
                                    <li><a href="#">Spinning Class</a></li>
                                    <li><a href="#">Kangoo Jump Class</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>

                    <!-- Footer Widget Area -->
                    <div class="col-12 col-sm-6 col-lg-3">
                        <div class="footer-widget-area mb-50">
                            <div class="widget-title">
                                <h6>Contact</h6>
                            </div>

                            <!-- Single Contact -->
                            <div class="single-contact mb-30">
                                <span>Address:</span>
                                <p>481 Creekside Lane Avila <br>Beach, CA 93424</p>
                            </div>

                            <!-- Single Contact -->
                            <div class="single-contact mb-30">
                                <span>Phone:</span>
                                <p>+53 345 7953 32453</p>
                            </div>

                            <!-- Single Contact -->
                            <div class="single-contact mb-30">
                                <span>Email:</span>
                                <p>yourmail@gmail.com</p>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>

        <!-- Copywrite Area -->
        <div class="bottom-footer-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <p><a href="#"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <i>Lavish Saini</i>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area Start ##### -->
</body>
</html>