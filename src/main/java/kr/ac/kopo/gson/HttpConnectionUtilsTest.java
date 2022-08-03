package kr.ac.kopo.gson;

import java.util.HashMap;
import java.util.Map;

import org.junit.Ignore;
import org.junit.Test;

import kr.ac.kopo.util.HttpConnectionUtils;

public class HttpConnectionUtilsTest {

	@Ignore
	@Test
	public void testGetRequest() {
		
		String url = "http://130.162.132.21:8080/OpenApi/openapi/myaccount/transaction/history.json";
				
		String response = HttpConnectionUtils.getRequest(url);
		System.out.println("getRequest:" + response);
	}

	@Test
	public void testPostRequest() {
		
		String url = "http://130.162.132.21:8080/OpenApi/openapi/myaccount/transaction/history.json";
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("acctNO", "100099085264");
				
		String response = HttpConnectionUtils.postRequest(url, map);
		System.out.println("postRequest:" + response);
	}
}
