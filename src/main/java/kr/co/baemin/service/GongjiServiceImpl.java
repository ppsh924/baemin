package kr.co.baemin.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.baemin.mapper.GongjiMapper;
import kr.co.baemin.service.GongjiService;
import kr.co.baemin.vo.GongjiVo;


@Service
@Qualifier("gs")
public class GongjiServiceImpl implements GongjiService{

	@Autowired
	private GongjiMapper mapper; 
	
	@Override
	public String write_ok(GongjiVo gvo)
	{
		mapper.write_ok(gvo);
		return "redirect:/gongji/list";
	}
	
	@Override
	public String list(Model model,HttpSession session)
	{
		String userid=session.getAttribute("userid").toString();
		ArrayList<GongjiVo> list=mapper.list();
		model.addAttribute("list", list);
		model.addAttribute("userid", userid);
		return "/gongji/list";
	}
	
	@Override
	public String content(HttpServletRequest request, Model model)
	{
		String id=request.getParameter("id");
		GongjiVo gvo=mapper.content(id);
		model.addAttribute("gvo", gvo);
		return "/gongji/content";
	}
	
	@Override
	public String delete(GongjiVo gvo)
	{
		mapper.delete(gvo.getId());
		return "redirect:/gongji/list";
	}
	
	@Override
	public String update(GongjiVo gvo, Model model)
	{
		GongjiVo gvo2=mapper.update(gvo);
		model.addAttribute("gvo", gvo2);
	    return "/gongji/update";	
	}
	
	@Override
	public String update_ok(GongjiVo gvo)
	{
		mapper.update_ok(gvo);
		return "redirect:list";
	}

}


