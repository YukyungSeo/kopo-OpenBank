package kr.ac.kopo.controller.account;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.CommCodeService;
import kr.ac.kopo.vo.CommCodeVO;

public class AddAccountController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		CommCodeService service = new CommCodeService();
		List<CommCodeVO> bankList = service.getOtherBankListByCodeId();
		
		request.setAttribute("bankList", bankList);
		
		return "/jsp/account/addAccount.jsp";
	}

}
