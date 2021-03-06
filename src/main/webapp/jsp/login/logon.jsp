<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>SEO Bank - Logon</title>
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
			let f = document.logonForm;
	
			if (isNull(f.id, "아이디를 입력하세요") 
					|| isNull(f.password, "패스워드를 입력하세요")
					|| isNull(f.repassword, "비밀번호를 다시 입력하세요") 
					|| isNull(f.name, "이름을 입력하세요")
					|| isNull(f.phone, "전화번호를 입력하세요"))
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
	            <h1 class="text-white animated zoomIn mb-3">회원가입</h1>
	        </div>
        </div>
        <!-- Navbar & Hero End -->


        <!-- Contact Start -->
        <div class="container">
            <!-- <div class="mx-auto text-center wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <p class="text-center mb-4">* 는 필수 입력값입니다.</p>
            </div> -->
            <div class="row justify-content-center">
                <div class="col-lg-7 wow fadeInUp" data-wow-delay="0.3s">
                    <form  action="${ pageContext.request.contextPath }/logonProcess.do" method="post"
			onsubmit="return checkForm()" name="logonForm" class="pt-3">
                        <div class="row g-3">
                            <div class="col-12">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="id" name="id" placeholder="id">
                                    <label for="id">id *</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <input type="password" class="form-control" id="password" name="password" placeholder="password">
                                    <label for="password">password *</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <input type="password" class="form-control" id="repassword" name="repassword" placeholder="repassword">
                                    <label for="repassword">password 재입력 *</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="name" name="name" placeholder="name">
                                    <label for="name">성명 *</label>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-floating">
                                    <input type="tel" class="form-control" id="phone" name="phone" placeholder="phone">
                                    <label for="phone">전화번호 * : '-' 없이 입력해주세요</label>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-floating">
                                    <input type="email" class="form-control" id="email" name="email" placeholder="email">
                                    <label for="email">이메일</label>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="basicAddr" name="basicAddr" placeholder="basicAddr">
                                    <label for="basicAddr">기본 주소</label>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="detailAddr" name="detailAddr" placeholder="detailAddr">
                                    <label for="detailAddr">상세 주소</label>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="post" name="post" placeholder="post">
                                    <label for="post">우편번호</label>
                                </div>
                            </div>
                            
                            <div class="col-12">
                                <input value="회원가입" class="btn btn-primary w-100 py-3" type="submit" />
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