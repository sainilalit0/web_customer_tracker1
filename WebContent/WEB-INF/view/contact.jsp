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
                        <a href="index.html" class="nav-brand"><img src="resources/img/core-img/logo.png" alt=""></a>

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
                                    <li><a href="service.jsp">Service</a></li>
                                    
                                    <li><a href="blog.jsp">News</a></li>
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
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(resources/img/bg-img/breadcumb-2.jpg);">
        <div class="bradcumbContent">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h2>Contact</h2>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Contact</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Contact Area Start ##### -->
    <section class="contact-area section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="contact-title">
                        <h3>Get in touch</h3>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="contact-content">
                        <!-- Contact Form Area -->
                        <div class="contact-form-area">
                            <form action="#" method="post">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="name" placeholder="Your Name">
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" id="email" placeholder="Your E-mail">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" id="subject" placeholder="Subject">
                                </div>
                                <div class="form-group">
                                    <textarea name="message" class="form-control" id="message" cols="30" rows="10" placeholder="Message"></textarea>
                                </div>
                                <button class="btn fitness-btn btn-2 mt-30" type="submit">Contact Us</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Contact Area End ##### -->

    <!-- ##### Google Maps ##### -->
    <div class="map-area">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d22236.40558254599!2d-118.25292394686001!3d34.057682914027104!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c75ddc27da13%3A0xe22fdf6f254608f4!2z4Kay4Ka4IOCmj-CmnuCnjeCmnOCnh-CmsuCnh-CmuCwg4KaV4KeN4Kav4Ka-4Kay4Ka_4Kar4KeL4Kaw4KeN4Kao4Ka_4Kav4Ka84Ka-LCDgpq7gpr7gprDgp43gppXgpr_gpqgg4Kav4KeB4KaV4KeN4Kak4Kaw4Ka-4Ka34KeN4Kaf4KeN4Kaw!5e0!3m2!1sbn!2sbd!4v1532328708137" allowfullscreen></iframe>
                
        <div class="fitness-contact-info">
            <a href="index.html" class="contact-logo d-block mb-30"><img src="resources/img/core-img/logo2.png" alt=""></a>
            <h6>1481 Creekside Lane Avila Beach, CA 931</h6>
            <h6>+7829793380</h6>
            <h6>yourmail@gmail.com</h6>
        </div>
    </div>

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

</body>
</html>