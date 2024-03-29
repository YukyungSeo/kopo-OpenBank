package kr.ac.kopo.controller.account;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.controller.Controller;
import kr.ac.kopo.service.CommCodeService;
import kr.ac.kopo.vo.CommCodeVO;

public class CreateController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {

		CommCodeService service = new CommCodeService();
		List<CommCodeVO> goodsList = service.getGoodsByCodeId();
		
		request.setAttribute("goodsList", goodsList);
		// TODO : goodslist를 가져와서 /account/list.jsp에 넣기

		return "/jsp/account/create.jsp";
	}

}
