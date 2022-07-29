<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>SEO Bank - Login</title>
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
    <script src="${ pageContext.request.contextPath }/js/secure.js"></script>
    <script src="${ pageContext.request.contextPath }/js/myJS.js"></script>
    <script src="${ pageContext.request.contextPath }/js/kakao.js"></script>
    <script>
    	/* general login */
    	function checkForm() {
    		let f = document.loginForm;

    		if (isNull(f.id, "아이디를 입력하세요") || isNull(f.password, "패스워드를 입력하세요"))
    			return false;

    		return true;
    	}
    	
    	/* kakao login */
    	
    	Kakao.init(getKakaoJSKey());
	    Kakao.isInitialized();
    	function kakaoLogin() {	
			Kakao.Auth.login({
				success: kakaoGetToken,
				fail: function(err) {
					alert(JSON.stringify(err))
				},
		})}
		
    	function kakaoGetToken(result) {
			//alert(JSON.stringify(result))
			
			var accessToken = Kakao.Auth.getAccessToken(); // 액세스 토큰 할당
            Kakao.Auth.setAccessToken(accessToken); // 액세스 토큰 사용하게 등록
            
            //console.log(result.id);
            //console.log(accessToken);
            
            let scope = result.scope.split(" ");
			console.log(scope);
	      
	      	Kakao.API.request({
	    	    url: '/v2/user/me',
	    	    data: {
	    	    	 property_keys: ["kakao_account.email","kakao_account.profile.nickname"]
	    	    },
	    	    success: function(response) {
	    	    	//alert(JSON.stringify(response))
	    	    	//alert(JSON.stringify(response.kakao_account.profile.nickname))
	    	    	//alert(JSON.stringify(response.kakao_account.email))
	    	        
	    	        sendApiIdForLogin(response);
	    	    },
	    	    fail: function(error) {
	    	        console.log(error);
	    	    }
	    	});
		}
    	
    	function sendApiIdForLogin(response){
	        let form = document.ApiLoginForm;
	  		form.id.value = response.id;
	  		form.name.value = response.kakao_account.profile.nickname;
	  		form.email.value = response.kakao_account.email;
	  		
			form.submit();
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
	            <h1 class="text-white animated zoomIn mb-3">로그인</h1>
	        </div>
        </div>
        <!-- Navbar & Hero End -->


        <!-- Contact Start -->
        <form action="${ pageContext.request.contextPath }/apiLoginProcess.do" method="post"
			onsubmit="return checkForm()" name="ApiLoginForm" class="pt-3">
			<input type="hidden" name="id" />
			<input type="hidden" name="name" />
			<input type="hidden" name="email" />
		</form>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-7 wow fadeInUp" data-wow-delay="0.3s">
                    <form action="${ pageContext.request.contextPath }/loginProcess.do" method="post"
						onsubmit="return checkForm()" name="loginForm" class="pt-3">
                        <div class="row g-3">
                            <div class="col-12">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="id" name="id" placeholder="id">
                                    <label for="id">id</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <input type="password" class="form-control" id="password" name="password" placeholder="password">
                                    <label for="password">password</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <input value="로그인" class="btn btn-primary w-100 py-3" type="submit" />
                            </div>
                            <div class="col-12">
                            	<a class="btn btn-kakao w-100 py-3" href="javascript:kakaoLogin()">
                            		<span class="span-login-icon"><img class="img-login-icon" src="${ pageContext.request.contextPath }/img/kakao_login_icon.png" /></span>
                            		<span class="span-login">카카오 로그인</span>
                           		</a>
							</div>
                            <p class="text-center mb-4">아직 아이디가 없으신가요? <a href="${ pageContext.request.contextPath }/logon.do">회원가입</a></p>
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