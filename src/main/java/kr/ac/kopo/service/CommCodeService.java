package kr.ac.kopo.service;

import java.util.List;

import kr.ac.kopo.dao.CommCodeDAO;
import kr.ac.kopo.vo.CommCodeVO;

public class CommCodeService {

	public List<CommCodeVO> getOtherBankListByCodeId(){
		List<CommCodeVO> list = this.getCommCodeByCodeId("120");
		for (CommCodeVO commCodeVO : list) {
			if(commCodeVO.getCode().equals("2")) {
				list.remove(commCodeVO);
				break;
			}
		}
		return list;
	}
	
	public List<CommCodeVO> getGoodsByCodeId() {
		return this.getCommCodeByCodeId("110");
	}
	
	private List<CommCodeVO> getCommCodeByCodeId(String codeId){
		CommCodeDAO commCodeDAO = new CommCodeDAO();
		return commCodeDAO.selectByCodeId(codeId); 
	}
}
