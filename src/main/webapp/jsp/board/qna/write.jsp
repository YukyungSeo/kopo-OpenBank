<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>SEO Bank - BoardDetail</title>
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
	<script>
		function checkForm() {
			let f = document.boardWriteForm;
	
			if (isNull(f.title, "제목을 작성해주세요") )
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


        <!-- Navbar & Hero Start -->
        <%@ include file="/jsp/include/navbar.jsp"%>
        <div class="container-xxl bg-primary page-header">
	        <div class="container text-center">
	            <h1 class="text-white animated zoomIn mb-3">게시글 작성</h1>
	        </div>
        </div>
        <!-- Navbar & Hero End -->


        <!-- Contact Start -->
        <div class="container">
		    <div class="row justify-content-center">
		        <div class="col-lg-7 wow fadeInUp" data-wow-delay="0.3s">
		            <form  action="${ pageContext.request.contextPath }/board/qna/writeProcess.do" method="post"
							onsubmit="return checkForm()" name="boardWriteForm" class="pt-3">
						<input type="hidden" class="form-control" value="${ boardType }" name="boardType" id="boardType" placeholder="boardType" readonly>
						<input type="hidden" class="form-control" value="${ superBoardSeq }" name="superBoardSeq" id="superBoardSeq" placeholder="superBoardSeq" readonly>
						<input type="hidden" class="form-control" value="${ member.id }" name="writer" id="writer" placeholder="activeBankcode" readonly>
		                <div class="row g-3">
                            <div class="col-md-6">
                                <h5>게시판 ${ boardTypeName }</h5>
                            </div>
                            <div class="col-md-6">
                                <h5>상위글 - 
                                	<c:if test="${ not empty superBoardTitle }">${ superBoardTitle }</c:if>
                            		<c:if test="${ empty superBoardTitle }">없음</c:if> 
                           		</h5>
                            </div>
		                	<div class="col-md-6">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="name" name="name" value="${ member.name }" placeholder="Your Name" readonly>
                                    <label for="name">작성자</label>
                                </div>
                            </div>
		                	<div class="col-md-12">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="title" name="title" placeholder="title">
                                    <label for="title">제목</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <textarea class="form-control" placeholder="내용을 작성하세요" id="content" name="content" style="height: 150px"></textarea>
                                    <label for="message">내용</label>
                                </div>
                            </div>
                            <div class="col-12 justify-content-center">
                            <div class="col-12">
                                <button class="btn btn-primary rounded-pill px-4 py-3 mt-2" type="submit">완료</button>
                                <a class="btn btn-primary rounded-pill px-4 py-3 mt-2" href="${ pageContext.request.contextPath }/board/qna/list.do?page=1">취소</a>
                                </div>
                            </div>
		                </div>
		            </form>
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