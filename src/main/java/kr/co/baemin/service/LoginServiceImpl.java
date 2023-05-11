package kr.co.baemin.service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.baemin.mapper.LoginMapper;
import kr.co.baemin.vo.MemberVo;

@Service
@Qualifier("ls")
public class LoginServiceImpl implements LoginService{
	@Autowired
	private LoginMapper mapper;
	
	@Override
	public String login(HttpServletRequest request, Model model) {
		String chk = request.getParameter("chk");
		model.addAttribute("chk", chk);
		return "/login/login";
	}
	
	@Override
	public String login_ok(MemberVo mvo, HttpSession session) {
		MemberVo mvo2 = mapper.login_ok(mvo);
		// �쉶�썝�씠 留욎쑝硫� �꽭�뀡蹂��닔瑜� �븷�떦
		if(mvo2 == null) { // �쉶�썝�씠 �븘�땲�씪硫�
			return "redirect:/login/login?chk=1";
		}else { // �쉶�썝�씠�씪硫�
			// �꽭�뀡蹂��닔
			session.setAttribute("userid", mvo2.getUserid());
			session.setAttribute("name", mvo2.getName());
			if(mvo2.getUserid().equals("admin1234"))
				return "redirect:/admin/adminmain";
			else
			    return "redirect:/main/main";
		}
	}

	@Override
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/main/main";
	}

	@Override
	public void userid_search(HttpServletRequest request, PrintWriter out) {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String userid = mapper.userid_search(name, email);
		if(userid == null) {
			out.print("1");
		}else {
			out.print(userid);
		}
	}

	@Override
	public void pwd_search(HttpServletRequest request, PrintWriter out) {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String userid = request.getParameter("userid");
		String pwd = mapper.pwd_search(name, email, userid);
		if(pwd == null) {
			out.print("1");
		}else {
			out.print(pwd);
		}
	}
}
