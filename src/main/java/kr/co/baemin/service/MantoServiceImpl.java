package kr.co.baemin.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.format.Printer;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.baemin.mapper.MantoMapper;
import kr.co.baemin.vo.AmantoVo;
import kr.co.baemin.vo.GongjiVo;
import kr.co.baemin.vo.MantoVo;

@Service
@Qualifier("ms")
public class MantoServiceImpl implements MantoService {
	@Autowired
	private MantoMapper mapper;
	
	@Override
	public String write_ok(HttpServletRequest request,HttpSession session) throws IOException
	{
		
		String path=request.getRealPath("resources/manto");
		int size=1024*1024*10;
		
		MultipartRequest multi=new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());
		
		String userid=session.getAttribute("userid").toString();
		String name=multi.getParameter("name");
		String email=multi.getParameter("email");
		int que=Integer.parseInt(multi.getParameter("que"));
		String title=multi.getParameter("title");
		String content=multi.getParameter("content");
		String fname=multi.getFilesystemName("fname");
		String fname2=multi.getFilesystemName("fname2");
		String fname3=multi.getFilesystemName("fname3");
		
		MantoVo mvo=new MantoVo();
		mvo.setUserid(userid);
		mvo.setName(name);
		mvo.setEmail(email);
		mvo.setQue(que);
		mvo.setTitle(title);
		mvo.setContent(content);
		mvo.setFname(fname);
		mvo.setFname2(fname2);
		mvo.setFname3(fname3);
		
		mapper.write_ok(mvo);
		
		return "/manto/write_ok";
		
	}
	
	@Override
	public String list(HttpServletRequest request,HttpSession session, Model model, MantoVo mvo)
	{
		if(session.getAttribute("userid")==null)
		{
			return "redirect:/login/login";
		}
		else
		{
			String userid=session.getAttribute("userid").toString();
		ArrayList<HashMap<String,String>> tmap=mapper.getlist(userid);
		model.addAttribute("tmap", tmap);
		}
		

	
		return "/manto/list";
	}
	
	@Override
	public String delete(MantoVo mvo)
	{
		
		mapper.delete(mvo.getId());
		return "redirect:/manto/list";
	}

}
