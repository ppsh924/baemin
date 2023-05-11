package kr.co.baemin.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import kr.co.baemin.vo.MantoVo;

public interface MantoService {
	public String write_ok(HttpServletRequest request, HttpSession session) throws IOException;
    public String list(HttpServletRequest request, HttpSession session, Model model, MantoVo mvo);
    public String delete(MantoVo mvo);
}
