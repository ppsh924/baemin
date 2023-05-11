package kr.co.baemin.service;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import kr.co.baemin.vo.AmantoVo;
import kr.co.baemin.vo.AreviewVo;
import kr.co.baemin.vo.FoodVo;
import kr.co.baemin.vo.GongjiVo;
import kr.co.baemin.vo.MantoVo;
import kr.co.baemin.vo.ReviewVo;

public interface AdminService {

	public String adminmain(HttpSession session);
	public String adminmtm(Model model, HttpSession session);
	public String amanto(AmantoVo avo, HttpSession session);
	public String adminmember(Model model, HttpSession session);
	public String out_ok(HttpServletRequest request);
	public String admingumae(Model model, HttpSession session);
	public String chgstate(HttpServletRequest request);
	public String adminreview(Model model, HttpSession session);
	public String adminreview_ok(ReviewVo rvo, HttpSession session);
	public String adminfood(HttpSession session);
	public String reviewdel(HttpServletRequest request);
	public String alist(HttpSession session, HttpServletRequest request, Model model);
	public String menuall(HttpSession session, HttpServletRequest request, Model model);
	public String menuone(HttpSession session, HttpServletRequest request, Model model);
	public String acontent(HttpSession session, HttpServletRequest request, Model model);
	public String acontent_ok(HttpSession session, HttpServletRequest request);
	public String areview(AreviewVo avo, HttpSession session);
	public String changeimage(HttpServletRequest request) throws IOException;
	public String menuallSearch(HttpServletRequest request, Model model, String keyword, HttpSession session);
	public String franchise(HttpServletRequest request, Model model, HttpSession session);
	public String goodtaste(HttpServletRequest request, Model model, HttpSession session);
	public String write_ok(GongjiVo gvo);
	public String glist(Model model,HttpSession session);
	public String gcontent(HttpServletRequest request, Model model, HttpSession session);
    public String delete(GongjiVo gvo);
    public String update(GongjiVo gvo, Model model);
    public String update_ok(GongjiVo gvo);
	


}
