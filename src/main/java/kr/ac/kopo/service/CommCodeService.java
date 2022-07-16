package kr.ac.kopo.service;

import java.util.List;

import kr.ac.kopo.dao.CommCodeDAO;
import kr.ac.kopo.vo.CommCodeVO;

public class CommCodeService {

	public List<CommCodeVO> getCommCodeByCodeId(String codeId){
		CommCodeDAO commCodeDAO = new CommCodeDAO();
		return commCodeDAO.selectByCodeId(codeId); 
	}
}
