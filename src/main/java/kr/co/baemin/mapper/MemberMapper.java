package kr.co.baemin.mapper;

import kr.co.baemin.vo.MemberVo;

public interface MemberMapper {
	public int userid_check(String userid);
	public void member_input_ok(MemberVo mvo);
	public MemberVo member_mybaemin(String userid);
	public MemberVo member_edit(String userid);
	public void member_edit_ok(MemberVo mvo);
	public int memberlevel(String userid);
	public void out(String userid);
	public int pwd_check(String userid, String pwd);
	public void pwd_change(String pwd, String userid);
}
