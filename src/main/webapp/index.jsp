<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>SEO Bank - Home</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    
    <!-- JavaScript -->
    <script src="${ pageContext.request.contextPath }/js/secure.js"></script>
    <script src="${ pageContext.request.contextPath }/js/kakao.js"></script>
    <script src="${ pageContext.request.contextPath }/js/myJS.js"></script>
    <script src="${ pageContext.request.contextPath }/js/jquery-3.6.0.min.js"></script>
    <script src="https://kit.fontawesome.com/3b179c433e.js" crossorigin="anonymous"></script>

</head>

<body>
    <div class="container-xxl bg-white p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->

        <!-- Navbar & Hero Start -->
        <%@include file="/jsp/include/navbar.jsp" %>
	    <div class="container-xxl bg-primary hero-header">
	        <div class="container">
	            <div class="row g-5 align-items-center">
	                <div class="col-lg-6 text-center text-lg-start">
	                    <h1 class="text-white mb-4 animated zoomIn"><c:if test="${ not empty member }">${ member.name }??? </c:if>???????????????!</h1><br>
	                    <h2 class="text-white mb-4 animated zoomIn">SEO ????????? ?????? ?????? ???????????????.</h2>
	                    <p class="text-white pb-3 animated zoomIn">?????? SEO ????????? ???????????? ???????????? ???????????????. ????????? ????????? ?????? ???????????? ??????????????????!</p>
	                    <a class="btn btn-outline-light rounded-pill border-2 py-3 px-5 animated slideInRight btn-modal-action"
	                    	onclick="checkLogin(${ empty member }, 'AccountList', '${ pageContext.request.contextPath }/account/list.do')">??? ??????</a>
	                </div>
	                <div class="col-lg-6 text-center text-lg-start">
	                    <img class="img-fluid animated zoomIn" src="img/hero.png" alt="">
	                </div>
	            </div>
	        </div>
	    </div>
        <!-- Navbar & Hero End -->

		<!-- Testimonial Start -->
        <%@ include file="/jsp/include/goodsTestimonial.jsp" %>
        <!-- Testimonial End -->

        <!-- Features Start -->
        <div class="container-xxl py-6">
            <div class="container">
                <div class="row g-5">
                    <div class="col-lg-5 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="d-inline-block border rounded-pill text-primary px-4 mb-3">????????????</div>
                        <h2 class="mb-4">???????????? ???????????? ????????? ????????????</h2>
                        <p>????????? ????????? ??????????????? ??? ?????? ?????? ????????? ???????????????.</p> 
                        <p>SEO ????????? ?????? ????????? ????????? ???????????? ????????? ????????????(bottom-up) ????????? ?????????, ????????? ??????????????? ??????, ????????? 10?????? ??????, ????????? ?????? ??????????????? ????????? ??? ??????????????? ?????? ??? ??? ????????? ?????????????????????.</p>
                        <a class="btn btn-primary rounded-pill py-3 px-5 mt-2" href="">Read More</a>
                    </div>
                    <div class="col-lg-7">
                        <div class="row g-5">
                            <div class="col-sm-6 wow fadeIn" data-wow-delay="0.1s">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="flex-shrink-0 btn-square bg-primary rounded-circle me-3">
                                    	<i class="fa fa-smile-beam text-white"></i>
                                    </div>
                                    <h6 class="mb-0">????????? ????????? ??????</h6>
                                </div>
                                <span>??????????????? ?????? ????????? ????????? ????????????, ????????? ?????? ????????? ????????? ????????? ??????, ?????? ?????? ????????? ??????????????? ?????????????????????.</span>
                            </div>
                            <div class="col-sm-6 wow fadeIn" data-wow-delay="0.2s">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="flex-shrink-0 btn-square bg-primary rounded-circle me-3">
                                        <i class="fa fa-award text-white"></i>
                                    </div>
                                    <h6 class="mb-0">??????????????? ?????? ????????????</h6>
                                </div>
                                <span>SEO ????????? ?????? ????????? ????????? ??????????????? ?????? ???????????? ?????????????????? ???????????? ????????????.</span>
                            </div>
                            <div class="col-sm-6 wow fadeIn" data-wow-delay="0.3s">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="flex-shrink-0 btn-square bg-primary rounded-circle me-3">
                                        <i class="fa-solid fa-earth-asia text-white"></i>
                                    </div>
                                    <h6 class="mb-0">???????????? ????????? ????????????</h6>
                                </div>
                                <span>????????? ??? ???????????? ????????? ????????? ???????????? ?????? '???????????? ???????????? ????????? ????????????'??? ????????? ?????? ???????????? ???????????? ????????????.</span>
                            </div>
                            <div class="col-sm-6 wow fadeIn" data-wow-delay="0.4s">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="flex-shrink-0 btn-square bg-primary rounded-circle me-3">
                                    	<i class="fa-solid fa-thumbs-up text-white"></i>
                                    </div>
                                    <h6 class="mb-0">Best Bank</h6>
                                </div>
                                <span>?????? 1??? ??????????????? ????????? ?????? ????????? ?????? ?????? ?????? ??????, ?????? ?????? ????????? ?????? ?????? ?????? ??????</span>
                            </div>
                            <div class="col-sm-6 wow fadeIn" data-wow-delay="0.5s">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="flex-shrink-0 btn-square bg-primary rounded-circle me-3">
                                        <i class="fa fa-user-tie text-white"></i>
                                    </div>
                                    <h6 class="mb-0">Stable Portfollio</h6>
                                </div>
                                <span>????????? ????????? ?????? ??????????????? ??????, ????????? ????????? ????????? ???????????? ????????? ??????</span>
                            </div>
                            <div class="col-sm-6 wow fadeIn" data-wow-delay="0.6s">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="flex-shrink-0 btn-square bg-primary rounded-circle me-3">
                                        <i class="fa fa-cubes text-white"></i>
                                    </div>
                                    <h6 class="mb-0">Trusted Group</h6>
                                </div>
                                <span>?????? ????????? ????????? '??????'??? ?????? ????????? ??????, ?????? ????????? ????????? ????????? ??????, ??????????????? ?????? ??????</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Features End -->


        <!-- Client Start -->
        <div class="container-xxl bg-primary my-6 py-5 wow fadeInUp" data-wow-delay="0.1s">
            <div class="container">
                <div class="owl-carousel client-carousel">
                    <a href="#"><img class="img-fluid" src="img/logo-1.png" alt=""></a>
                    <a href="#"><img class="img-fluid" src="img/logo-2.png" alt=""></a>
                    <a href="#"><img class="img-fluid" src="img/logo-3.png" alt=""></a>
                    <a href="#"><img class="img-fluid" src="img/logo-4.png" alt=""></a>
                    <a href="#"><img class="img-fluid" src="img/logo-5.png" alt=""></a>
                    <a href="#"><img class="img-fluid" src="img/logo-6.png" alt=""></a>
                    <a href="#"><img class="img-fluid" src="img/logo-7.png" alt=""></a>
                    <a href="#"><img class="img-fluid" src="img/logo-8.png" alt=""></a>
                </div>
            </div>
        </div>
        <!-- Client End -->

        <!-- Footer Start -->
        <%@ include file="/jsp/include/footer.jsp"%>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>