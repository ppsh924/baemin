package kr.co.baemin.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.baemin.service.LoginService;
import kr.co.baemin.vo.MemberVo;

@Controller
public class LoginController {
	@Autowired
	@Qualifier("ls")
	private LoginService service;
	
	@RequestMapping("/login/login")
	public String login(HttpServletRequest request, Model model) {
		return service.login(request, model);
	}
	
	@RequestMapping("/login/login_ok")
	public String login_ok(MemberVo mvo, HttpSession session) {
		return service.login_ok(mvo, session);
	}
	
	@RequestMapping("/login/logout")
	public String logout(HttpSession session) {
		return service.logout(session);
	}
	
	@RequestMapping("/login/userid_search")
	public void userid_search(HttpServletRequest request, PrintWriter out) {
		service.userid_search(request, out);
	}
	
	@RequestMapping("/login/pwd_search")
	public void pwd_search(HttpServletRequest request, PrintWriter out) {
		service.pwd_search(request, out);
	}
}
