<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>SEO Bank - AddAccount</title>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
		function check() {
			
			let f = document.addAccountForm;
			let bankcode = f.bankcode.value;
			let accountNo = f.accountNo.value;
		    
			if(bankcode < 5 || accountNo !== '') {
				return true
			} else {
				
			    $.ajax({
			       url:'http://130.162.132.21:8080/OpenApi/openapi/myaccount.json',
			       //url: 'http://130.162.132.21:8080/OpenApi/openapi/myaccount/transaction/history.json',
			       type:'post',
			       data: {
			    	   bank_code: bankcode,
			    	   tel: '${ member.phone }'
			       },
			       dataType:'json',
			       success:callback,
			       error: function(){
			          alert('실패!!')
			       }
			    })
			    
				return false
			    
			}
	
		}
		 
		 function callback(result){
		    let res = JSON.stringify(result)
		    console.log('result:'+ res)
		    
	    	let f = document.addAccountForm;
		    
		    for(i=0; i<result.length; i++){
		    	
		    	f.accountNo.value += result[i].acctNO + ',';
		    }
		    
		    $('#addAccount-btn').trigger("click");
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
	            <h1 class="text-white animated zoomIn mb-3">오픈뱅킹</h1>
	        </div>
        </div>
        <!-- Navbar & Hero End -->


        <!-- Contact Start -->
        <div class="container">
		    <div class="row justify-content-center">
		        <div class="col-lg-7 wow fadeInUp" data-wow-delay="0.3s">
		            <form  action="${ pageContext.request.contextPath }/account/addAccountProcess.do" method="post" 
		            		onsubmit="return check()" name="addAccountForm" class="pt-3">
	            		<input type="hidden" name="accountNo" value="" />
		                <div class="row g-3">
		                	<div class="col-12">
		                        <div class="form-floating">
		                            <select class="form-select" id="bankcode" name="bankcode" aria-label="Financial Consultancy">
		                            <c:forEach var="bank" items="${ bankList }" varStatus="status">
		                                <option value="${ bank.code }">${ bank.name }</option>
	                                </c:forEach>
		                            </select>
		                            <label for="floatingSelect">은행선택</label>
		                        </div>
		                    </div>
		                    <div class="col-12">
		                        <button class="btn btn-primary w-100 py-3" type="submit" id="addAccount-btn">계좌 추가하기</button>
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