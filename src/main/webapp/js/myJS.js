function isNull(obj, msg) {
	if (obj.value === '') {
		alert(msg);
		obj.focus();
		return true;
	}
	return false;
}

function isChecked(obj, msg) {
	if(!obj.is(":checked")){
		alert(msg);
		obj.focus();
		return true;
	}
	
	return false;
}

function checkLogin(member, type, contextPath){
	
	if(member) {
		$(".modal").fadeIn();
	} else {
		switch(type){
		case 'AccountList':
			location.href = contextPath + "/account/list.do"
			break;
		case 'CreateAccout':
			location.href = contextPath + "/account/create.do"
			break;
		case 'writeQnABoard':
			location.href="${ pageContext.request.contextPath }/board/qna/write.do"
			break;
		}
	}
	
}

function goLogin(contextPath){
	location.href = contextPath + "/login.do"
}




function kakaoLogin(activeAcctNo, amount, balance) {	
	Kakao.Auth.login({
		success: function kakaoGetToken(result) {
			alert(JSON.stringify(result))
			
			var accessToken = Kakao.Auth.getAccessToken(); // 액세스 토큰 할당
		    Kakao.Auth.setAccessToken(accessToken); // 액세스 토큰 사용하게 등록
		  
		  	Kakao.API.request({
			    url: '/v2/api/talk/memo/default/send',
			    data: {
			    	"template_object" : json.dumps({ 
			    		"object_type" : "text",
		                "text" : "계좌이체가 완료되었습니다.\n" + activeAcctNo + " 계좌에서 " + amount + "이체되었습니다.\n잔액 " + balance,
		                "link" : {
		                            "web_url" : "http://localhost:9999/kopo-OpenBank/",
		                            "mobile_web_url" : "http://localhost:9999/kopo-OpenBank/"
		                         },
			    		"button_title": "자세히 보기"
					})
			    },
			    success: function(response) {
			    	alert(response)	;    	        
			    },
			    fail: function(error) {
			        console.log(error);
			    }
			});
		},
		fail: function(err) {
			alert(JSON.stringify(err))
		},
	})
}

