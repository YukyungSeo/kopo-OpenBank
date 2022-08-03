<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>SEO Bank - Create Account</title>
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
    <script src="${ pageContext.request.contextPath }/js/jquery-3.6.0.min.js"></script>
    <script src="${ pageContext.request.contextPath }/js/myJS.js"></script>
	<script>
	function checkForm() {
		let f = document.createForm;

		if (isNull(f.password, "패스워드를 입력하세요") ||
				isNull(f.repassword, "패스워드를 다시 입력하세요"))
			return false;
		
		if(isChecked($("#flexCheckDefault1"), '개인(신용)정보 조회를 동의해주세요') 
				|| isChecked($("#flexCheckDefault2"), '불법 탈법 차명거래 금지 설명을 확인해주세요') 
				|| isChecked($("#flexCheckDefault3"), '예금자보호법 설명을 확인해주세요'))
			return false;

		return true;
	}
	
	$(document).ready(function(){
		$(".checkbox_group").on("click", "#flexCheckDefault-whole", function () {
			var checked = $(this).is(":checked");
			
			if(checked){
				$(this).parents(".checkbox_group").find('input').prop("checked", true);
			} else {
				$(this).parents(".checkbox_group").find('input').prop("checked", false);
			}
		});
	});
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
	            <h1 class="text-white animated zoomIn mb-3">1Q계좌개설</h1>
	        </div>
        </div>
        <!-- Navbar & Hero End -->


        <!-- Contact Start -->
        <div class="container">
		    <div class="row justify-content-center">
		        <div class="col-lg-7 wow fadeInUp" data-wow-delay="0.3s">
		            <form  action="${ pageContext.request.contextPath }/account/createProcess.do" method="post"
							onsubmit="return checkForm()" name="createForm" class="pt-3">
		                <div class="row g-3">
		                    <div class="col-12">
		                        <div class="form-floating">
		                            <select class="form-select" name="goodsClCode" id="goodsClCode" aria-label="Financial Consultancy">
		                                <option value="0">입출금예금</option>
		                            </select>
		                            <label for="floatingSelect">상품 유형</label>
		                        </div>
		                    </div>
		                    <div class="col-12">
		                        <div class="form-floating">
		                            <select class="form-select" name="goodsCode" id="goodsCode" aria-label="Financial Consultancy">
		                            <c:forEach var="goods" items="${ goodsList }" varStatus="status">
		                                <option value="${ goods.code }">${ goods.name }</option>
	                                </c:forEach>
		                            </select>
		                            <label for="floatingSelect">상품 유형</label>
		                        </div>
		                    </div>
		                    <div class="col-md-6">
		                        <div class="form-floating">
		                            <input type="password" class="form-control" name="password" id="password" placeholder="4digit password">
		                            <label for="password">비밀번호 4자리</label>
		                        </div>
		                    </div>
		                    <div class="col-md-6">
		                        <div class="form-floating">
		                            <input type="password" class="form-control" name="repassword" id="repassword" placeholder="4digit password">
		                            <label for="repassword">비밀번호 4자리 재입력</label>
		                        </div>
		                    </div>
		                    
		                    <!-- 동의버튼 -->
		                    <div class="checkbox_group">
			                    <div class="col-md-12" style="margin-bottom:10px">
		                    		<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault-whole"> &nbsp;&nbsp; 
									<label class="form-check-label" for="flexCheckDefault-whole" >전체 동의</label>
		                    	</div>
			                    <div class="col-md-12 accordion" id="accordionExample">
									<div class="accordion-item">
										<h2 class="accordion-header" id="headingOne">
											<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
												<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault1" name="flexCheckDefault1"> &nbsp;&nbsp; 
												<label class="form-check-label" for="flexCheckDefault1" >개인(신용)정보 조회 동의서</label>
											</button>
										</h2>
										<div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample" style="">
										    <div class="accordion-body">
										    	「신용정보의 이용 및 보호에 관한 법률」제32조제2항에 따라 귀사가 아래와 같은 내용으로 신용조회회사 또는 신용정보집중기관으로부터 본인의 신용정보를 조회하는 것에 대하여 동의합니다.
												<br>
												□ 조회할 신용정보 : 개인식별정보, 신용거래정보, 신용등급 및 평점정보
										    </div>
						 				</div>
									</div>
									<div class="accordion-item">
										<h2 class="accordion-header" id="headingTwo">
											<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="#collapseTwo">
												<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault2" name="flexCheckDefault2"> &nbsp;&nbsp; 
												<label class="form-check-label" for="flexCheckDefault2" >불법 탈법 차명거래 금지 설명 확인</label>
											</button>
										</h2>
										<div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample" style="">
										    <div class="accordion-body">
										    	금융실명거래 및 비밀보장에 관한 법률」 제3조 제3항에 따라 누구든지 불법재산의 은닉, 자금세탁 행위, 공중협박자금조달행위 및 강제 집행의 면탈, 그 밖의 탈법행위를 목적으로 타인의 실명으로 금융거래를 하여서는 아니되며, 이를 위반 시 5년 이하의 징역 또는 5천만 원 이항의 벌금에 처할 수 있습니다. 본인은 위 안내에 대해 충분히 이해하였음을 확인합니다.
										    </div>
						 				</div>
									</div>
									<div class="accordion-item">
										<h2 class="accordion-header" id="headingThree">
											<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="#collapseThree">
												<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault3" name="flexCheckDefault3"> &nbsp;&nbsp; 
												<label class="form-check-label" for="flexCheckDefault3" >예금자보호법 설명 확인</label>
											</button>
										</h2>
										<div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample" style="">
										    <div class="accordion-body">
										    	본인이 가입하는 금융상품의 예금자보호여부 및 보호한도(원금과 소정의 이자를 하하여 1인당 5천만원)에 대하여 설명을 보고, 충분히 이해하였음을 확인합니다.
										    </div>
						 				</div>
									</div>
			                    </div>
		                    </div>
		                    <div class="col-12">
		                        <button class="btn btn-primary w-100 py-3" type="submit">계좌 개설</button>
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