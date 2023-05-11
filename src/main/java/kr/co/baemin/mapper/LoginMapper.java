package kr.co.baemin.mapper;

import kr.co.baemin.vo.MemberVo;

public interface LoginMapper {
	public MemberVo login_ok(MemberVo mvo);
	public String userid_search(String name, String userid);
	public String pwd_search(String name, String email, String userid);
}
