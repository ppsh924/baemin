package kr.co.baemin.service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import kr.co.baemin.vo.MemberVo;

public interface LoginService {
	public String login(HttpServletRequest request, Model model);
	public String login_ok(MemberVo mvo, HttpSession session);
	public String logout(HttpSession session);
	public void userid_search(HttpServletRequest request, PrintWriter out);
	public void pwd_search(HttpServletRequest request, PrintWriter out);
}
