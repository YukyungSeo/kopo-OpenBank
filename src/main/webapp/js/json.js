
function getAccountFromOpenBank(bankCode, phone){
	let requestURL = 'http://130.162.132.21:8080/OpenApi/openapi/myaccount.json';
	let data = `{
		"bank_code": ` + bankCode + `,
		"tel": ` + phone + `,
	}`;
	
	let request = new XMLHttpRequest();
	request.open('GET', requestURL);
	request.responseType = 'json';
	request.send(data);
	
	request.onload = function() {
		let superHeroes = request.response;
		console.log(superHeroes);
	}
}