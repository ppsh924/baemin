package kr.co.baemin.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import kr.co.baemin.vo.BaesongVo;
import kr.co.baemin.vo.GumaeVo;

public interface FoodService {

	public String food(Model model);
	public void getCode(HttpServletRequest request, PrintWriter out);
	public String food_ok(HttpServletRequest request) throws IOException;
	public String flist(HttpServletRequest request, Model model);
	public String fcontent(HttpServletRequest request, Model model, HttpSession session);
	public void wish_add(HttpServletRequest request, HttpSession session, PrintWriter out);
	public String menuall(HttpServletRequest request, Model model);
	public String menuone(HttpServletRequest request, Model model);
	public String franchise(HttpServletRequest request, Model model);
	public String goodtaste(HttpServletRequest request, Model model);
	public String menu_put(HttpServletRequest request, Model model);
	public String menu_put2(HttpServletRequest request, Model model);
	public String menu_put3(HttpServletRequest request, Model model);
	public String menu_put4(HttpServletRequest request, Model model);
	public String menu_put5(HttpServletRequest request, Model model);
	  public String gumae(HttpServletRequest request, HttpSession session, Model model);
	  public String baeview(HttpSession session, Model model); //배송지 확인
	  public String jusoadd();
	  public String jusoadd_ok(BaesongVo bvo, HttpSession session);
	  public String baeup(HttpServletRequest request, Model model);
	  public String baeup_ok(BaesongVo bvo,HttpSession session);
	  public String baedel(HttpServletRequest request, HttpSession session);
	  public String chgcla(HttpServletRequest request, Model model);
	  public void chg_ok(HttpServletRequest request, PrintWriter out);
     public String gumae_ok(int id, GumaeVo gvo, HttpSession session);
     public String jumun(HttpServletRequest request, Model model);
	public String jumundel(HttpServletRequest request);
	public String menuallSearch(HttpServletRequest request, Model model, String keyword);
	public void cartAllDel(PrintWriter out);
}
