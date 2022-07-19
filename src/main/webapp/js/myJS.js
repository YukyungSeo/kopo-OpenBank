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