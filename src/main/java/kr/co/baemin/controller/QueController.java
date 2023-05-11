package kr.co.baemin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QueController {
	@RequestMapping("/que/que1")
	public String que1(Model model)
	{
		model.addAttribute("abc","0");
		return "/que/que1";
	}
	@RequestMapping("/que/que2")
	public String que2(Model model)
	{
		model.addAttribute("abc","1");
		return "/que/que2";
	}
	@RequestMapping("/que/que3")
	public String que3(Model model)
	{
		model.addAttribute("abc","2");
		return "/que/que3";
	}
	@RequestMapping("/que/que4")
	public String que4(Model model)
	{
		model.addAttribute("abc","3");
		return "/que/que4";
	}
	@RequestMapping("/que/que5")
	public String que5(Model model)
	{
		model.addAttribute("abc","4");
		return "/que/que5";
	}
	@RequestMapping("/que/que6")
	public String que6(Model model)
	{
		model.addAttribute("abc","5");
		return "/que/que6";
	}
	@RequestMapping("/que/que7")
	public String que7(Model model)
	{
		model.addAttribute("abc","6");
		return "/que/que7";
	}
	@RequestMapping("/que/que8")
	public String que8(Model model)
	{
		model.addAttribute("abc","7");
		return "/que/que8";
	}
	@RequestMapping("/que/que9")
	public String que9()
	{
		return "/que/que9";
	}
}
