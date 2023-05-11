package kr.co.baemin.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.baemin.service.MemberService;
import kr.co.baemin.vo.MemberVo;

@Controller
public class MemberController {
	@Autowired
	@Qualifier("ms")
	private MemberService service;
	
	@RequestMapping("/member/member_input")
	public String member_input() {
		return "/member/member_input";
	}
	
	@RequestMapping("/member/userid_check")
	public void userid_check(HttpServletRequest request, PrintWriter out) {
		service.userid_check(request, out);
	}
	
	@RequestMapping("/member/member_input_ok")
	public String member_input_ok(MemberVo mvo) {
		return service.member_input_ok(mvo);
	}
	
	@RequestMapping("/member/member_mybaemin")
	public String member_mybaemin(HttpSession session, Model model) {
		return service.member_mybaemin(session, model);
	}
	
	@RequestMapping("/member/member_edit")
	public String member_edit(HttpSession session, Model model) {
		return service.member_edit(session, model);
	}
	
	@RequestMapping("/member/member_edit_ok")
	public String member_edit_ok(MemberVo mvo, HttpSession session) {
		return service.member_edit_ok(mvo, session);
	}
	
	@RequestMapping("/member/member_level")
	public String member_level(HttpSession session, Model model) {
		return service.member_level(session, model);
	}
	
	@RequestMapping("/excludes/baemin_vip")
	public String baemin_vip() {
		return "/excludes/baemin_vip";
	}
	
	@RequestMapping("/member/out")
	public String out(HttpSession session) {
		return service.out(session);
	}

	@RequestMapping("/member/pwd_check")
	public void pwd_check(HttpSession session, HttpServletRequest request, PrintWriter out) {
		service.pwd_check(session, request, out);
	}

	@RequestMapping("/member/pwd_change")
	public void pwd_change(HttpServletRequest request, PrintWriter out, HttpSession session) { // ajax는 void
		service.pwd_change(request, out, session);
	}
	
	@RequestMapping("/member/event")
	public String event() {
		return "/member/event";
	}
}
