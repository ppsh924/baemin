package kr.co.baemin.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.baemin.service.FoodService;
import kr.co.baemin.vo.BaesongVo;
import kr.co.baemin.vo.GumaeVo;

@Controller
public class FoodController {
	@Autowired
	@Qualifier("fs")
	private FoodService service;
	
	@RequestMapping("/food/food")
	public String food(Model model) {
		return service.food(model);
	}
	
	@RequestMapping("/food/getcode")
	public void getCode(HttpServletRequest request, PrintWriter out) {
		service.getCode(request, out);
	}
	
	@RequestMapping("/food/food_ok")
	public String food_ok(HttpServletRequest request) throws IOException {
		return service.food_ok(request);
	}
	
	@RequestMapping("/food/flist")
	public String flist(HttpServletRequest request, Model model) {
		return service.flist(request, model);
	}
	
	@RequestMapping("/food/fcontent")
	public String fcontent(HttpServletRequest request, Model model, HttpSession session) {
		return service.fcontent(request, model, session);
	}
	
	@RequestMapping("/food/wish_add")
	public void wish_add(HttpSession session, HttpServletRequest request,
			PrintWriter out) {
		service.wish_add(request, session, out);
	}

	@RequestMapping("/food/menuall")
	public String menuall(HttpServletRequest request, Model model) {
		return service.menuall(request, model);
	}
	
	@RequestMapping("/food/menuone")
	public String menuone(HttpServletRequest request, Model model) {
		return service.menuone(request, model);
	}
	
	@RequestMapping("/food/franchise")
	public String franchise(HttpServletRequest request, Model model) {
		return service.franchise(request, model);
	}
	
	@RequestMapping("/food/goodtaste")
	public String goodtaste(HttpServletRequest request, Model model) {
		return service.goodtaste(request, model);
	}
	
	@RequestMapping("/excludes/menu_put")
	public String menu_put(HttpServletRequest request, Model model) {
		return service.menu_put(request, model);
	}
	
	@RequestMapping("/excludes/menu_put2")
	public String menu_put2(HttpServletRequest request, Model model) {
		return service.menu_put2(request, model);
	}
	
	@RequestMapping("/excludes/menu_put3")
	public String menu_put3(HttpServletRequest request, Model model) {
		return service.menu_put3(request, model);
	}
	
	@RequestMapping("/excludes/menu_put4")
	public String menu_put4(HttpServletRequest request, Model model) {
		return service.menu_put4(request, model);
	}
	
	@RequestMapping("/excludes/menu_put5")
	public String menu_put5(HttpServletRequest request, Model model) {
		return service.menu_put5(request, model);
	}
	
	@RequestMapping("/food/cartAllDel")
	public void cartAllDel(PrintWriter out)
	{
		service.cartAllDel(out);
	}
	
	@RequestMapping("/food/menuallSearch")
	public String menuallSearch(HttpServletRequest request, Model model, 
			@RequestParam(value = "keyword", required = false, defaultValue="") String keyword) {
		return service.menuallSearch(request, model, keyword);
	}
	
	@RequestMapping("/food/gumae")
	public void gumae(HttpServletRequest request, HttpSession session, Model model) {
		service.gumae(request, session, model);
	}
	
	@RequestMapping("/food/baeview")
	public String baeview(HttpSession session, Model model) {
		return service.baeview(session, model);
	}
	
	@RequestMapping("/food/jusoadd")
	public String jusoadd() {
		return service.jusoadd();
	}
	
	@RequestMapping("/food/jusoadd_ok")
	public String jusoadd_ok(BaesongVo bvo, HttpSession session) {
		return service.jusoadd_ok(bvo, session);
	}
	
	@RequestMapping("/food/baeup")
	public String baeup(HttpServletRequest request, Model model) {
		return service.baeup(request, model);
	}
	
	@RequestMapping("/food/baeup_ok")
	public String baeup_ok(BaesongVo bvo, HttpSession session) {
		return service.baeup_ok(bvo, session);
	}
	
	@RequestMapping("/food/baedel")
	public String baedel(HttpServletRequest request, HttpSession session) {
		return service.baedel(request, session);
	}
	
	@RequestMapping("/food/chgcla")
	//배송사항 변경창띄우기
	public String chgcla(HttpServletRequest request, Model model) {
		return service.chgcla(request, model);
	}
	
	@RequestMapping("/food/chg_ok") //배송요청사항을 변경
	public void chg_ok(HttpServletRequest request, PrintWriter out) {
		service.chg_ok(request, out);
	}
	
	@RequestMapping("/food/gumae_ok")
	public String gumae_ok(int id, GumaeVo gvo, HttpSession session) {
		//System.out.println(id);
		return service.gumae_ok(id, gvo, session);		
	}
	
	@RequestMapping("/food/jumun")
	public String jumun(HttpServletRequest request, Model model) {
		return service.jumun(request, model);
	}
	
	@RequestMapping("/food/jumundel")
	public String jumundel(HttpServletRequest request) {
		return service.jumundel(request);
	}
}
