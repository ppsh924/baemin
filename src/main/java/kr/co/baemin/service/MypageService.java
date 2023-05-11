package kr.co.baemin.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import kr.co.baemin.vo.GumaeVo;
import kr.co.baemin.vo.ReviewVo;

public interface MypageService {
	public String wishview(HttpSession session, Model model);
	public String wishdel(HttpServletRequest request);
	public void cartadd(HttpServletRequest request, HttpSession session,PrintWriter out);
	public String cartview(HttpSession session, Model model);
	public String cartstate(HttpServletRequest request, PrintWriter out,HttpSession session);
	public String cartdel(HttpServletRequest request);
	public void cartsu(HttpServletRequest request, PrintWriter out, HttpSession session);
    public String jumunview(HttpSession session, Model model);
    public String chgstate(HttpServletRequest request);
	String review_ok(HttpSession session, HttpServletRequest request) throws IOException;
	public String reviewdel(HttpServletRequest request);
	String review(HttpServletRequest request, Model model, HttpSession session);
	public String jumundetail(HttpSession session, Model model, HttpServletRequest request);
	public String jumundel(HttpServletRequest request);
	String reviewlist(Model model, HttpSession session, GumaeVo gvo);
	public String update(HttpSession session, Model model, ReviewVo rvo);
}
