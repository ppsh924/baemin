package kr.co.baemin.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.baemin.service.MantoService;
import kr.co.baemin.vo.MantoVo;

@Controller
public class MantoController {

	@Autowired
	@Qualifier("ms")
	private MantoService service;
	
	@RequestMapping("/manto/write")
	public String write()
	{
		return "/manto/write";
	}
	
	@RequestMapping("/manto/write_ok")
	public String write_ok(HttpServletRequest request, HttpSession session) throws IOException
	{
		return service.write_ok(request,session);
	}
	
	@RequestMapping("/manto/list")
	public String list(HttpServletRequest request,HttpSession session, Model model, MantoVo mvo)
	{
		return service.list(request,session,model,mvo);
	}
	
	@RequestMapping("/manto/delete")
	public String delete(MantoVo mvo)
	{
		return service.delete(mvo);
	}
	
	@RequestMapping("/manto/gogek_center")
	public String gogek_center()
	{
		return "/manto/gogek_center";
	}
	
	@RequestMapping("/manto/gogek_ansim")
	public String gogek_ansim()
	{
		return "/manto/gogek_ansim";
	}
	
	@RequestMapping("/manto/security_center")
	public String security_center()
	{
		return "/manto/security_center";
	}
}
