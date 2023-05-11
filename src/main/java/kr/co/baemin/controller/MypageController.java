package kr.co.baemin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.baemin.service.MypageService;
import kr.co.baemin.vo.GumaeVo;
import kr.co.baemin.vo.ReviewVo;

@Controller
public class MypageController {
	@Autowired
	@Qualifier("ms")
	private MypageService service;
	
	@RequestMapping("/mybaemin/wishview")
	public String wishview(HttpSession session, Model model) {
		return service.wishview(session, model);
	}
	
	@RequestMapping("/mybaemin/wishdel")
	public String wishdel(HttpServletRequest request) {
		return service.wishdel(request);
	}
	
	@RequestMapping("/excludes/cartadd")
	public void cardadd(HttpServletRequest request, HttpSession session,PrintWriter out) {
		 service.cartadd(request, session,out);
	}
	

	@RequestMapping("/mybaemin/cartview")
	public String cartview(HttpSession session, Model model) {
		return service.cartview(session, model);
	}
	
	@RequestMapping("/mybaemin/cartstate")
	public String cartstate(HttpServletRequest request, PrintWriter out, HttpSession session)
	{
		return service.cartstate(request,out,session);
	}
	
	@RequestMapping("/mybaemin/cartdel")
	public String cartdel(HttpServletRequest request) {
		return service.cartdel(request);
	}
	
	// 장바구니 수량 변경 후 새로고침 했을 때도 변경된 수량으로 표시
	@RequestMapping("/mybaemin/cartsu")
	public void cartsu(HttpServletRequest request, PrintWriter out, HttpSession session) {
		service.cartsu(request, out, session);
	}
	
	@RequestMapping("/mybaemin/jumunview")
	public String jumunview(HttpSession session,Model model)
	{
		return service.jumunview(session,model);
	}
	
	@RequestMapping("/mybaemin/chgstate")
	public String chgstate(HttpServletRequest request)
	{
		return service.chgstate(request);
	}
	
	@RequestMapping("/mybaemin/jumundetail")
	public String jumundetail(HttpSession session, Model model, HttpServletRequest request) {
		return service.jumundetail(session, model, request);
	}
	
	@RequestMapping("/mybaemin/jumundel")
	public String jumundel(HttpServletRequest request) {
		return service.jumundel(request);
	}
	
	@RequestMapping("/mybaemin/review")
	public String review(HttpServletRequest request, Model model, HttpSession session)
	{
		return service.review(request,model,session);
	}
	
	@RequestMapping("/mybaemin/review_ok")
	public String review_ok(HttpSession session, HttpServletRequest request) throws IOException
	{
		return service.review_ok(session, request);
	}
	
	
	@RequestMapping("/mybaemin/reviewlist")
	public String reviewlist(Model model, HttpSession session, GumaeVo gvo)
	{
		return service.reviewlist(model, session, gvo);
	}
	
	@RequestMapping("/mybaemin/reviewdel")
	public String reviewdel(HttpServletRequest request)
	{
		return service.reviewdel(request);
	}
	
	@RequestMapping("/mybaemin/update")
	public String update(HttpSession session,  Model model, ReviewVo rvo)
	{
		return service.update(session, model, rvo);
	}
	
}
