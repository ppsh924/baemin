package kr.co.baemin.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.ws.http.HTTPBinding;

import org.springframework.ui.Model;

import kr.co.baemin.vo.GongjiVo;

public interface GongjiService {
	public String write_ok(GongjiVo gvo);
	public String list(Model model,HttpSession session);
	public String content(HttpServletRequest request, Model model);
    public String delete(GongjiVo gvo);
    public String update(GongjiVo gvo, Model model);
    public String update_ok(GongjiVo gvo);
}
