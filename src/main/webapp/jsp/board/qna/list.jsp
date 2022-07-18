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
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
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
    <script src="${ pageContext.request.contextPath }/js/myJS.js"></script>
    <script src="${ pageContext.request.contextPath }/js/jquery-3.6.0.min.js"></script>
    <script>
    function checkLogin(type){
    	if(${ empty member }) {
    		$(".modal").fadeIn();
    	} else {
    		switch(type){
    		case 'writeQnABoard':
    			location.href="${ pageContext.request.contextPath }/board/qna/write.do"
    			break;
    		}
    	}
    }
    
    $(document).ready(function(){    	
		$(".btn-login").click(function(){
			location.href="${ pageContext.request.contextPath }/login.do"
		});
		
		$(".btn-cancle").click(function(){
			$(".modal").fadeOut();
		});
    });
    
	function checkForm() {
		let f = document.listForm;

		if (isNull(f.bankSelect, "은행을 선택해주세요"))
			return false;
		
		return true;
	}
	</script>
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

		<!-- modal start -->
		<%@ include file="/jsp/include/modal.jsp" %>
		<!-- modal end -->

        <!-- Navbar & Hero Start -->
        <%@ include file="/jsp/include/navbar.jsp"%>
        <div class="container-xxl bg-primary page-header">
	        <div class="container text-center">
	            <h1 class="text-white animated zoomIn mb-3">QnA</h1>
	        </div>
        </div>
        <!-- Navbar & Hero End -->


        <!-- Contact Start -->
        <div class="container">
			<div class="col-12 wow fadeInUp" data-wow-delay="0.5s">
				<div class="col-lg-auto wow fadeInUp" data-wow-delay="0.5s">
                	<a class="btn btn-primary btn-sm" type="button" 
                		onclick="checkLogin('writeQnABoard')">새글작성</a>
                </div>
            </div>
		    <table class="table table-hover col-lg-7 wow fadeInUp" data-wow-delay="0.3s">
				<thead>
					<tr>
						<th scope="col">Type</th>
						<th scope="col">Title</th>
						<th scope="col">Writer</th>
						<th scope="col">View</th>
						<th scope="col">Register Date</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${ boardList }" var="board" varStatus="status">
					<tr <c:if test="${ status.count mod 2 eq 0 }"> class="table-primary" </c:if> >
						<th scope="row">${ board.boardTypeName }</th>
						<td>
							<c:forEach begin="0" end="${ board.tabCnt }">
								&nbsp;&nbsp;
							</c:forEach>
							<c:if test="${ board.tabCnt ne 0 }">└</c:if>
							<a href="${ pageContext.request.contextPath }/board/qna/detail.do?boardSeq=${ board.boardSeq }">
								${ board.title }
							</a>
						</td>
						<td>${ board.writerName }</td>
						<td>${ board.viewCnt }</td>
						<td>${ board.regDate }</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="row justify-content-center">
				<div class="col-lg-auto wow fadeInUp" data-wow-delay="0.5s">
					<ul class="pagination">
						<li class="page-item <c:if test="${ page le 1 }">disabled</c:if>">
							<a class="page-link" href="${ pageContext.request.contextPath }/board/qna/list.do?page=${ page - 1 }">&laquo;</a>
						</li>
						<c:forEach begin="1" end="${ pageCnt }" varStatus="status">
							<li class="page-item <c:if test="${ status.count eq page }">active</c:if>" >
								<a class="page-link" href="${ pageContext.request.contextPath }/board/qna/list.do?page=${ status.count }">${ status.count }</a>
							</li>
						</c:forEach>
						<li class="page-item <c:if test="${ page ge pageCnt }">disabled</c:if>">
							<a class="page-link" href="${ pageContext.request.contextPath }/board/qna/list.do?page=${ page + 1 }">&raquo;</a>
						</li>
					</ul>
				</div>
			</div>
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