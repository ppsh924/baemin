package kr.co.baemin.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.baemin.service.AdminService;
import kr.co.baemin.vo.AmantoVo;
import kr.co.baemin.vo.AreviewVo;
import kr.co.baemin.vo.FoodVo;
import kr.co.baemin.vo.GongjiVo;
import kr.co.baemin.vo.MantoVo;
import kr.co.baemin.vo.ReviewVo;

@Controller
public class AdminController {
	
	@Autowired
	@Qualifier("as")
	private AdminService service;
	
	@RequestMapping("/admin/adminmain")
	public String adminmain(HttpSession session)
	{
		return service.adminmain(session);
	}
	
	
	@RequestMapping("/admin/admingumae")
	public String admingumae(Model model, HttpSession session)
	{
		return service.admingumae(model, session);
	}
	
	@RequestMapping("/admin/chgstate")
	public String chgstate(HttpServletRequest request)
	{
		return service.chgstate(request);
	}
	
	@RequestMapping("/admin/adminmtm")
	public String adminmtm(Model model,HttpSession session)
	{
		return service.adminmtm(model,session);
	}
	
	
	
	@RequestMapping("/admin/adminmember")
	public String adminmember(Model model,HttpSession session)
	{
		return service.adminmember(model, session);
	}
	
	@RequestMapping("/admin/out_ok")
	public String out_ok(HttpServletRequest request)
	{
		return service.out_ok(request);
	}
	
	@RequestMapping("/admin/adminfood")
	public String adminfood(HttpSession session)
	{
		return service.adminfood(session);
	}
	

	
	@RequestMapping("/admin/alist")
	public String alist(HttpSession session, HttpServletRequest request, Model model )
	{
		return service.alist(session,request,model);
	}
	@RequestMapping("/admin/menuall")
	public String menuall(HttpSession session, HttpServletRequest request, Model model)
	{
		return service.menuall(session, request, model);
	}
	
	@RequestMapping("/admin/menuone")
	public String menuone(HttpSession session, HttpServletRequest request, Model model)
	{
		return service.menuone(session, request, model);
	}
	
	@RequestMapping("/admin/franchise")
	public String franchise(HttpServletRequest request, Model model, HttpSession session) {
		return service.franchise(request, model, session);
	}
	
	@RequestMapping("/admin/goodtaste")
	public String goodtaste(HttpServletRequest request, Model model, HttpSession session) {
		return service.goodtaste(request, model ,session);
	}
	
	@RequestMapping("/admin/menuallSearch")
	public String menuallSearch(HttpServletRequest request, Model model, 
			@RequestParam(value = "keyword", required = false, defaultValue="") String keyword, HttpSession session) {
		return service.menuallSearch(request, model, keyword,session);
	}
	
	
	@RequestMapping("/admin/acontent")
	public String acontent(HttpSession session, HttpServletRequest request, Model model)
	{
		return service.acontent(session,request,model);
	}
	
	@RequestMapping("/admin/acontent_ok")
	public String acontent_ok(HttpSession session, HttpServletRequest request) 
	{
		return service.acontent_ok(session,request);
	}
	@RequestMapping("/admin/adminreview")
	public String adminreview(Model model, HttpSession session)
	{
		return service.adminreview(model,session);
	}
	
	@RequestMapping("/admin/adminreview_ok")
	public String adminreview_ok(ReviewVo rvo,HttpSession session)
	{
		return service.adminreview_ok(rvo,session);
	}
	
	@RequestMapping("/admin/reviewdel")
	public String reviewdel(HttpServletRequest request)
	{
		return service.reviewdel(request);
	}
	
	@RequestMapping("/admin/amanto")
	public String amanto(AmantoVo avo, HttpSession session)
	{
		return service.amanto(avo, session);
	}
	
	@RequestMapping("/admin/areview")
	public String areview(AreviewVo avo, HttpSession session)
	{
		return service.areview(avo,session);
	}
	
	@RequestMapping("/admin/write")
	public String write()
	{
		return "/admin/write";
	}
	
	@RequestMapping("/admin/write_ok")
	public String write_ok(GongjiVo gvo)
	{
		return service.write_ok(gvo);
	}
	
	@RequestMapping("/admin/glist")
	public String list(Model model,HttpSession session)
	{
		return service.glist(model,session);
	}
	
	@RequestMapping("/admin/gcontent")
	public String gcontent(HttpServletRequest request, Model model, HttpSession session)
	{
	  return service.gcontent(request, model, session);
	}
	
	@RequestMapping("/admin/delete")
	public String delete(GongjiVo gvo)
	{
		return service.delete(gvo);
	}
	
	@RequestMapping("/admin/update")
	public String update(GongjiVo gvo, Model model)
	{
		return service.update(gvo,model);
	}
	
	@RequestMapping("/admin/update_ok")
	public String update_ok(GongjiVo gvo)
	{
		return service.update_ok(gvo);
	}
	

}
