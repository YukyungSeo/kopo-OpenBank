<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>SEO Bank - 이체완료</title>
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
    
    <!-- map api -->
    <script src="${ pageContext.request.contextPath }/js/secure.js"></script>
    <script src="${ pageContext.request.contextPath }/js/jquery-3.6.0.min.js"></script>
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
	            <h1 class="text-white animated zoomIn mb-3">이체 완료</h1>
	        </div>
        </div>
        <!-- Navbar & Hero End -->


        <!-- Features Start -->
        <div class="container">
            <div class="row align-items-center justify-content-center " >
	            <div class="col-lg-4 wow fadeInUp" data-wow-delay="0.3s">
	                <div class="row g-3">
		            	<i class="fa-solid fa-circle-check  fa-3x text-primary mb-3"></i>
		            	<h2 class="mb-5">이체가 완료되었습니다.</h2>
			           	<button class="btn btn-kakao rounded-pill py-3 px-5 mt-2" onclick="kakaotalkSharing()">
			           		<span class="span-login-icon"><img class="img-login-icon" src="${ pageContext.request.contextPath }/img/kakao_login_icon.png" /></span>
			           		<span class="span-login">카카오톡으로 공유하기</span>
		           		</button>
			           	<a class="btn btn-primary rounded-pill py-3 px-5 mt-2" href="${ pageContext.request.contextPath }/account/list.do">계좌로 돌아가기</a>
		            </div>
	            </div>
            </div>
        </div>
        <!-- Features End -->
        

        <!-- Footer Start -->
        <%@ include file="/jsp/include/footer.jsp" %>
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
    <script src="${ pageContext.request.contextPath }/js/secure.js"></script>
    <script src="${ pageContext.request.contextPath }/js/kakao.js"></script>
    <script src="${ pageContext.request.contextPath }/js/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-json/2.6.0/jquery.json.min.js" integrity="sha512-QE2PMnVCunVgNeqNsmX6XX8mhHW+OnEhUhAWxlZT0o6GFBJfGRCfJ/Ut3HGnVKAxt8cArm7sEqhq2QdSF0R7VQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://kit.fontawesome.com/3b179c433e.js" crossorigin="anonymous"></script>
    
	<!-- kakao message api start -->
	<script>
	
	Kakao.init(getKakaoKey());
	Kakao.isInitialized();
	kakaoLogin();
		
	function kakaoLogin() {	
		Kakao.Auth.login({
			success: kakaoGetToken,
			fail: function(err) {
				alert(JSON.stringify(err))
			},
		})
	}
	
	function kakaoGetToken(result) {
		/* alert(JSON.stringify(result)) */
		
		var accessToken = Kakao.Auth.getAccessToken(); // 액세스 토큰 할당
	       Kakao.Auth.setAccessToken(accessToken); // 액세스 토큰 사용하게 등록
	       
	     	Kakao.API.request({
	   	    url: '/v2/api/talk/memo/default/send',
	   	    data: {
	   	    	template_object : { 
	   	    		object_type : 'text',
	   	            text : '계좌이체가 완료되었습니다.\n\n${ member.name }님의 \n${ account.goods }에서 \n${ transaction.amount } 원 이체되었습니다.\n\n잔액 ${ account.amount } 원',
	   	            link : {
	   	                        web_url : 'http://localhost:9999/kopo-OpenBank/',
	   	                        mobile_web_url : 'http://localhost:9999/kopo-OpenBank/'
	   	                     },
	   	    		button_title: "자세히 보기"
	   			}
	   	    },
	   	    success: function(response) {
	   	    	/* alert(JSON.stringify(response))	; */    	        
	   	    },
	   	    fail: function(error) {
	   	        console.log(error);
	   	    }
	   	});
	}
	</script>
	<script>
	function kakaotalkSharing(){
		Kakao.Share.sendDefault({
			  objectType: 'text',
			  text:
			    '${ member.name } 님에게서\n${ transaction.amount } 원 이체되었습니다.',
			  link: {
			    mobileWebUrl:
			      'http://localhost:9999/kopo-OpenBank/',
			    webUrl:
			      'http://localhost:9999/kopo-OpenBank/',
			  },
		});
	}
	</script>
    <!-- kakao message api end -->
    
</body>

</html>