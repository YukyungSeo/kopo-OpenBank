<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>BizConsult - List</title>
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
	            <h1 class="text-white animated zoomIn mb-3">거래 내역</h1>
	        </div>
        </div>
        <!-- Navbar & Hero End -->


        <!-- Contact Start -->
        <div class="container">
	        <div class="col-lg-7 wow fadeInUp" data-wow-delay="0.3s">
                <div class="row g-3">
					<h1 class="animated zoomIn mb-3">
                		<c:choose>
                		<c:when test="${ account.bankcode eq 1 }">
	                		<img alt="skbank-logo" src="${ pageContext.request.contextPath }/img/skbank-logo.png" style="height:70%"> 
                		</c:when>
                		<c:when test="${ account.bankcode eq 2 }">
	                		<img alt="seobank-logo" src="${ pageContext.request.contextPath }/img/mini-logo.png" style="height:50%"> 
                		</c:when>
                		<c:when test="${ account.bankcode eq 3 }">
	                		<i class="fa-solid fa-building-columns" style="height:50%;color:#00B98E"></i>
                		</c:when>
                		<c:when test="${ account.bankcode eq 4 }">
                			<span style="background-color:blue;overflow:hidden;height:auto;weight:auto;">
	                		<img alt="smbank-logo" src="${ pageContext.request.contextPath }/img/logo-4.png" style="height:50%"> 
	                		</span>
                		</c:when>
                		</c:choose>
               			${ account.goods }
           			</h1>
                	<h2 class="animated zoomIn mb-3">잔액 ${ account.amount }원</h2>
					<p>사용여부 &nbsp;&nbsp; ${ account.available }</p>
					<p>등록일 &nbsp;&nbsp;&nbsp;&nbsp; ${ account.regDate }<p>
                </div>
	        </div>
		    <table class="table table-hover col-lg-7 wow fadeInUp" data-wow-delay="0.3s">
				<thead>
					<tr>
						<th scope="col">거래일</th>
						<th scope="col">거래명</th>
						<th scope="col">상태</th>
						<th scope="col" style="text-align:right;">금액</th>
						<th scope="col" style="text-align:right;">잔액</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${ transactionList }" var="transaction" varStatus="status">
					<tr class="table-primary" >
						<td>${ transaction.regDate }</td>
						<th scope="row">${ transaction.name }</th>
						<c:choose>
						<c:when test="${ transaction.type eq 'I' }">
							<td style="color:blue;">입금</td>
							<td style="color:blue; text-align:right;">${ transaction.amount } 원</td>
						</c:when>
						<c:when test="${ transaction.type eq 'O' }">
							<td style="color:red;">출금</td>
							<td style="color:red; text-align:right;">${ transaction.amount } 원</td>
						</c:when>
						</c:choose>
						<td style="text-align:right;">${ transaction.balance } 원</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
        <!-- Contact End -->
        

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