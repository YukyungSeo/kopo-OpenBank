package kr.ac.kopo.test;

import static org.junit.Assert.assertNotNull;

import kr.ac.kopo.service.LoginService;

public class LoginTest {
	
	@org.junit.Test
	public void login() {
		LoginService service = new LoginService();
		assertNotNull(service.login("admin", "admin"));
	}
}
