<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>SEO Bank - Account</title>
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
    
    <!-- javascript -->
    <script src="https://kit.fontawesome.com/3b179c433e.js" crossorigin="anonymous"></script>
    <script src="${ pageContext.request.contextPath }/js/myJS.js"></script>
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
        <%@ include file="/jsp/include/navbar.jsp"%>
        <div class="container-xxl bg-primary page-header">
	        <div class="container text-center">
	            <h1 class="text-white animated zoomIn mb-3">내 계좌</h1>
	        </div>
        </div>
        <!-- Navbar & Hero End -->


        <!-- Service Start -->
        <div class="container">
            <div class="row g-4">
            	<c:forEach items="${ myAccountList }" var="account">
	                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s" >
	                    <div class="service-item rounded h-100">
	                        <div class="d-flex justify-content-between">
	                            <div class="service-icon">
	                                <img alt="mini-logo-white" src="${ pageContext.request.contextPath }/img/mini-logo.png" style="width:100%;">
	                            </div>
	                            <a class="service-btn" href="${ pageContext.request.contextPath }/account/transaction.do?bankcode=${ account.bankcode }&accountNo=${ account.accountNo }">이체</a>
                            </div>
	                        <div class="p-4">
	                            <h4 class="mb-3"><a onclick="location.href='${ pageContext.request.contextPath }/account/transactionList.do?bankcode=${ account.bankcode }&accountNo=${ account.accountNo }'" href="#" style="text-decoration:none">${ account.goods }</a></h4><br>
	                            <h6 class="mb-3">계좌번호 ${ account.accountNo }</h6>
	                            <h5 class="mb-3">금액 ${ account.amount }원</h5>
	                        </div>
	                    </div>
	                </div>
                </c:forEach>
                <c:forEach items="${ otherAccountList }" var="account">
	                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
	                    <div class="service-item rounded h-100">
	                        <div class="d-flex justify-content-between">
                            	<c:choose>
                            		<c:when test="${ account.bankcode eq 1 }">
                            			<div class='service-icon-sk'>
                            				<img alt="skbank-logo" src="${ pageContext.request.contextPath }/img/skbank-logo.png" style="width:100%;">
                           				</div>
                       				</c:when>
                       				<c:when test="${ account.bankcode eq 3 }">
                            			<div class='service-icon-hj'>
                            				<i class="fa-solid fa-building-columns fa-2x"></i>
                           				</div>
                       				</c:when>
                       				<c:when test="${ account.bankcode eq 4 }">
                            			<div class='service-icon-sm'>
                            				<img alt="sm-logo" src="${ pageContext.request.contextPath }/img/logo-4.png" style="width:100%;">
                           				</div>
                       				</c:when>
                            		<c:otherwise>'service-icon'</c:otherwise>
								</c:choose>
	                            <a class="service-btn" href="${ pageContext.request.contextPath }/account/transaction.do?bankcode=${ account.bankcode }&accountNo=${ account.accountNo }">이체</a>
	                        </div>
	                        <div class="p-4">
	                            <h4 class="mb-3"><a onclick="location.href='${ pageContext.request.contextPath }/account/transactionList.do?bankcode=${ account.bankcode }&accountNo=${ account.accountNo }'" style="text-decoration:none" href="#">${ account.goods }</a></h4><br>
	                            <h6 class="mb-3">계좌 ${ account.accountNo }</h6>
	                            <h5 class="mb-3">금액 ${ account.amount }원</h5>
	                        </div>
	                    </div>
	                </div>
                </c:forEach>
            </div>
        </div>
        <!-- Service End -->

		<!-- add OpenBank Account -->
		<div class="container-xxl py-6">
            <div class="container">
                <div class="mx-auto text-center wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <a class="btn btn-primary rounded-pill py-3 px-5 mt-2" href="${ pageContext.request.contextPath }/account/addAccount.do">+ 다른 금융 계좌 추가</a>
                </div>
            </div>
        </div>
        
		<!-- Testimonial Start -->
        <%@ include file="/jsp/include/goodsTestimonial.jsp" %>
        <!-- Testimonial End -->
        

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