package kr.co.baemin.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.baemin.service.GongjiService;
import kr.co.baemin.vo.GongjiVo;


@Controller
public class GongjiController {
	
	@Autowired
	@Qualifier("gs")
	private GongjiService service;
	
	@RequestMapping("/gongji/write")
	public String write()
	{
		return "/gongji/write";
	}
	
	@RequestMapping("/gongji/write_ok")
	public String write_ok(GongjiVo gvo)
	{
		return service.write_ok(gvo);
	}
	
	@RequestMapping("/gongji/list")
	public String list(Model model,HttpSession session)
	{
		return service.list(model,session);
	}
	
	@RequestMapping("/gongji/content")
	public String content(HttpServletRequest request, Model model)
	{
	  return service.content(request, model);
	}
	@RequestMapping("/gongji/delete")
	public String delete(GongjiVo gvo)
	{
		return service.delete(gvo);
	}
	@RequestMapping("/gongji/update")
	public String update(GongjiVo gvo, Model model)
	{
		return service.update(gvo,model);
	}
	@RequestMapping("/gongji/update_ok")
	public String update_ok(GongjiVo gvo)
	{
		return service.update_ok(gvo);
	}

}
