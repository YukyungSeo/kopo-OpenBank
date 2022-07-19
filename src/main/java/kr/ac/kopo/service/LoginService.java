package kr.ac.kopo.service;

import kr.ac.kopo.dao.MemberDAO;
import kr.ac.kopo.vo.MemberVO;

public class LoginService {

	private MemberDAO MemberDAO;

	public LoginService() {
		MemberDAO = new MemberDAO();
	}
	
	/**
	 * id pwd로 로그인 및 회원 정보 가져오기
	 */
	public MemberVO login(String id, String pwd) {
		MemberVO memberVO = MemberDAO.selectById(id);
		
		// password 비교
		if(memberVO != null && pwd.equals(memberVO.getPassword())){
			return memberVO;
		}
		return null;
	}
	
	/**
	 * api id로 로그인
	 */
	public MemberVO apiLogin(String id) {
		MemberVO memberVO = MemberDAO.selectById(id);
		return memberVO;
	}

	/**
	 * 회원가입
	 * @param memberVO
	 * @param repassword
	 * @return
	 */
	public boolean logon(MemberVO memberVO, String repassword) {
		if(!memberVO.getPassword().equals(repassword))
			return false;
		
		return MemberDAO.insert(memberVO);
	}

	/**
	 * API 회원가입
	 * @param memberVO
	 */
	public boolean apiLogon(MemberVO memberVO) {
		return MemberDAO.insert(memberVO);		
	}
}
