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
    <link href="${ pageContext.request.contextPath }/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="${ pageContext.request.contextPath }/lib/animate/animate.min.css" rel="stylesheet">
    <link href="${ pageContext.request.contextPath }/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${ pageContext.request.contextPath }/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Template Stylesheet -->
    <link href="${ pageContext.request.contextPath }/css/style.css" rel="stylesheet">
    
    <!-- JavaScript -->
    <script src="${ pageContext.request.contextPath }/js/secure.js"></script>
    <script src="${ pageContext.request.contextPath }/js/kakao.js"></script>
    <script src="${ pageContext.request.contextPath }/js/myJS.js"></script>
    <script src="${ pageContext.request.contextPath }/js/jquery-3.6.0.min.js"></script>
    <script src="https://kit.fontawesome.com/3b179c433e.js"></script>

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
	                    <h1 class="text-white mb-4 animated zoomIn"><c:if test="${ not empty member }">${ member.name }님 </c:if>안녕하세요!</h1><br>
	                    <h2 class="text-white mb-4 animated zoomIn">SEO 은행에 오신 것을 환영합니다.</h2>
	                    <p class="text-white pb-3 animated zoomIn">저희 SEO 은행은 오픈뱅킹 서비스를 지원합니다. 빠르고 간편한 계좌 설계부터 시작해보세요!</p>
	                    <a class="btn btn-outline-light rounded-pill border-2 py-3 px-5 animated slideInRight btn-modal-action"
	                    	onclick="checkLogin(${ empty member }, 'AccountList', '${ pageContext.request.contextPath }/account/list.do')">내 계좌</a>
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
                        <div class="d-inline-block border rounded-pill text-primary px-4 mb-3">회사소개</div>
                        <h2 class="mb-4">신뢰받고 앞서가는 글로벌 금융그룹</h2>
                        <p>위대한 성공의 시작점에는 늘 가슴 뛰는 비전이 있었습니다.</p> 
                        <p>SEO 은행은 그룹 구성원 모두가 참여하는 상향식 의견수렴(bottom-up) 방식을 통하여, 그룹의 존재이유인 미션, 새로운 10년의 비전, 그리고 모든 가치판단의 기준이 될 핵심가치를 다시 한 번 새롭게 정립하였습니다.</p>
                        <a class="btn btn-primary rounded-pill py-3 px-5 mt-2" href="">Read More</a>
                    </div>
                    <div class="col-lg-7">
                        <div class="row g-5">
                            <div class="col-sm-6 wow fadeIn" data-wow-delay="0.1s">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="flex-shrink-0 btn-square bg-primary rounded-circle me-3">
                                    	<i class="fa fa-smile-beam text-white"></i>
                                    </div>
                                    <h6 class="mb-0">모두가 행복한 금융</h6>
                                </div>
                                <span>직원들에게 자아 실현의 기회를 제공하고, 손님의 자산 증대와 사업의 성장을 돕고, 이를 통해 사회가 번영하는데 일조하겠습니다.</span>
                            </div>
                            <div class="col-sm-6 wow fadeIn" data-wow-delay="0.2s">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="flex-shrink-0 btn-square bg-primary rounded-circle me-3">
                                        <i class="fa fa-award text-white"></i>
                                    </div>
                                    <h6 class="mb-0">대한민국의 대표 금융그룹</h6>
                                </div>
                                <span>SEO 은행은 국내 최대의 글로벌 네트워크를 통해 세계적인 금융그룹으로 도약하고 있습니다.</span>
                            </div>
                            <div class="col-sm-6 wow fadeIn" data-wow-delay="0.3s">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="flex-shrink-0 btn-square bg-primary rounded-circle me-3">
                                        <i class="fa-solid fa-earth-asia text-white"></i>
                                    </div>
                                    <h6 class="mb-0">신뢰받는 글로벌 금융그룹</h6>
                                </div>
                                <span>금융의 각 분야에서 축적된 역량과 시너지를 통한 '신뢰받고 앞서가는 글로벌 금융그룹'의 실현을 위해 끊임없이 노력하고 있습니다.</span>
                            </div>
                            <div class="col-sm-6 wow fadeIn" data-wow-delay="0.4s">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="flex-shrink-0 btn-square bg-primary rounded-circle me-3">
                                    	<i class="fa-solid fa-thumbs-up text-white"></i>
                                    </div>
                                    <h6 class="mb-0">Best Bank</h6>
                                </div>
                                <span>국내 1위 은행으로의 도약을 통한 안정적 이익 창출 기반 확보, 손님 기반 강회를 통한 은행 입지 제고</span>
                            </div>
                            <div class="col-sm-6 wow fadeIn" data-wow-delay="0.5s">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="flex-shrink-0 btn-square bg-primary rounded-circle me-3">
                                        <i class="fa fa-user-tie text-white"></i>
                                    </div>
                                    <h6 class="mb-0">Stable Portfollio</h6>
                                </div>
                                <span>그룹의 안정적 사업 포트폴리오 구축, 시너지 기반의 진정한 종합금융 서비스 제공</span>
                            </div>
                            <div class="col-sm-6 wow fadeIn" data-wow-delay="0.6s">
                                <div class="d-flex align-items-center mb-3">
                                    <div class="flex-shrink-0 btn-square bg-primary rounded-circle me-3">
                                        <i class="fa fa-cubes text-white"></i>
                                    </div>
                                    <h6 class="mb-0">Trusted Group</h6>
                                </div>
                                <span>핵심 차별화 기반인 '신뢰'를 전략 목표에 반영, 그룹 차원의 브랜드 이미지 제고, 금융소비자 보호 강화</span>
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
    <script src="${ pageContext.request.contextPath }/lib/wow/wow.min.js"></script>
    <script src="${ pageContext.request.contextPath }/lib/easing/easing.min.js"></script>
    <script src="${ pageContext.request.contextPath }/lib/waypoints/waypoints.min.js"></script>
    <script src="${ pageContext.request.contextPath }/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="${ pageContext.request.contextPath }/js/main.js"></script>
</body>

</html>