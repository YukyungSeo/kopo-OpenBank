<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>SEO Bank - Transaction</title>
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
			let f = document.transactionForm;
	
			if (isNull(f.bankSelect, "은행을 선택해주세요") 
					|| isNull(f.dealAccount, "계좌번호를 입력하세요")
					|| isNull(f.amount, "금액을 입력하세요") 
					|| isNull(f.password, "비밀번호를 입력하세요"))
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
	            <h1 class="text-white animated zoomIn mb-3">이체하기</h1>
	        </div>
        </div>
        <!-- Navbar & Hero End -->


        <!-- Contact Start -->
        <div class="container">
    		<div class="mx-auto text-center wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <div class="d-inline-block border rounded-pill text-primary px-4 mb-3"></div>
                <h2 class="mb-3">${ account.bankName } ${ account.accountNo }</h2>
                <h2 class="mb-3">잔액 : ${ account.amount } 원</h2>
            </div>
		    <div class="row justify-content-center">
		        <div class="col-lg-7 wow fadeInUp" data-wow-delay="0.3s">
		            <form  action="${ pageContext.request.contextPath }/account/transactionProcess.do" method="post"
							onsubmit="return checkForm()" name="transactionForm" class="pt-3">
						<input type="hidden" class="form-control" value="${ account.bankcode }" name="activeBankcode" id="activeBankcode" placeholder="activeBankcode" readonly>
						<input type="hidden" class="form-control" value="${ account.accountNo }" name="activeAcctNo" id="activeAcctNo" placeholder="activeAcctNo" readonly>
		                <div class="row g-3">
		                	<div class="col-12">
		                        <div class="form-floating">
		                            <select class="form-select" id="dealBankcode" name="dealBankcode" aria-label="Financial Consultancy">
		                                <option selected value="2">SEO 은행</option>
		                                <option value="1">SY 은행</option>
		                                <option value="3">HJ 은행</option>
		                                <option value="4">SM 은행</option>
		                            </select>
		                            <label for="floatingSelect">은행선택</label>
		                        </div>
		                    </div>
		                    <div class="col-md-12">
		                        <div class="form-floating">
		                            <input type="text" class="form-control" name="dealAcctNo" id="dealAcctNo" placeholder="dealAcctNo">
		                            <label for="dealAccount">받는분 계좌번호 : '-'없이 표기</label>
		                        </div>
		                    </div>
		                    <div class="col-md-12">
		                        <div class="form-floating">
		                            <input type="text" class="form-control" name="amount" id="amount" placeholder="amount">
		                            <label for="amount">금액</label>
		                        </div>
		                    </div>
		                    <div class="col-md-6">
		                        <div class="form-floating">
		                            <input type="password" class="form-control" id="password" placeholder="4digit password">
		                            <label for="password">비밀번호 4자리</label>
		                        </div>
		                    </div>
		                    <div class="col-md-12">
		                        <div class="form-floating">
		                            <input type="text" class="form-control" name="dealName" id="dealName" placeholder="dealName">
		                            <label for="dealName">받는분에게 표기</label>
		                        </div>
		                    </div>
		                    <div class="col-md-12">
		                        <div class="form-floating">
		                            <input type="text" class="form-control" name="name" id="name" placeholder="name">
		                            <label for="name">나에게 표기</label>
		                        </div>
		                    </div>
		                    <div class="col-12">
		                        <button class="btn btn-primary w-100 py-3" type="submit">이체하기</button>
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