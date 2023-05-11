package kr.co.baemin.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.baemin.mapper.AdminMapper;
import kr.co.baemin.vo.AmantoVo;
import kr.co.baemin.vo.AreviewVo;
import kr.co.baemin.vo.FoodVo;
import kr.co.baemin.vo.GongjiVo;
import kr.co.baemin.vo.MantoVo;
import kr.co.baemin.vo.MemberVo;
import kr.co.baemin.vo.ReviewVo;

@Service
@Qualifier("as")
public class AdminServiceImpl implements AdminService{
	@Autowired
	private AdminMapper mapper;

	@Override
	public String adminmain(HttpSession session) {
		
		if(session.getAttribute("userid")==null)
			return "redirect:/login/login";
		
		if(session.getAttribute("userid").equals("admin1234"))
		{
		    return "/admin/adminmain";
		}
		else
		{
			return "redirect:/main/main";
		}
	}

	@Override
	public String adminmtm(Model model, HttpSession session) {
		if(session.getAttribute("userid")==null)
			return "redirect:/login/login";
		
		if(session.getAttribute("userid").equals("admin1234"))
		{
			ArrayList<HashMap<String,String>> mlist=mapper.adminmtm();
			model.addAttribute("mlist",mlist);
			return "/admin/adminmtm";
		}
		else
		{
			return "redirect:/main/main";
		}
	}

	@Override
	public String amanto(AmantoVo avo, HttpSession session) {
		String userid=session.getAttribute("userid").toString();
		avo.setUserid(userid);
		mapper.amanto(avo);
		
		mapper.setState("manto",avo.getMid());
		return "redirect:/admin/adminmtm";
	}

	@Override
	public String adminmember(Model model, HttpSession session) {
		if(session.getAttribute("userid")==null)
			return "redirect:/login/login";
		
		if(session.getAttribute("userid").equals("admin1234"))
		{
			ArrayList<MemberVo> mlist=mapper.getMember();
			
			model.addAttribute("mlist",mlist);
			return "/admin/adminmember";
			
		}
		else
		{
			return "redirect:/main/main";
		}
	}
	
	@Override
	public String out_ok(HttpServletRequest request) {
		String id=request.getParameter("id");
		mapper.out_ok(id);
		return "redirect:/admin/adminmember";
	}

	@Override
	public String admingumae(Model model, HttpSession session) {
		if(session.getAttribute("userid")==null)
			return "redirect:/login/login";
		
		if(session.getAttribute("userid").equals("admin1234"))
		{
			ArrayList<HashMap<String, String>> glist=mapper.admingumae();
			model.addAttribute("glist",glist);
			return "/admin/admingumae";
		}
		
		else
		{
			return "redirect:/main/main";
		}
		
	}

	@Override
	public String chgstate(HttpServletRequest request) {
		
		String state2=request.getParameter("state2");
		String jumuncode=request.getParameter("jumuncode");
		
		mapper.chgstate(state2,jumuncode);
		return "redirect:/admin/admingumae";
	}

	@Override
	public String adminreview(Model model, HttpSession session) {
		if(session.getAttribute("userid")==null)
			return "redirect:/login/login";
		
		if(session.getAttribute("userid").equals("admin1234"))
		{
			ArrayList<ReviewVo> rlist=mapper.getReview();
			
			for(int i=0;i<rlist.size();i++)
			{
				String content=rlist.get(i).getContent().replace("\r\n", "<br>");
				rlist.get(i).setContent(content);
			}
			model.addAttribute("rlist",rlist);
			return "/admin/adminreview";
		}
		else
		{
			return "redirect:/main/main";
		}
	}
	
	@Override
	public String adminreview_ok(ReviewVo rvo, HttpSession session) {
		if(session.getAttribute("userid")==null)
			return "redirect:/login/login";
		
		if(session.getAttribute("userid").equals("admin1234"))
		{
			String userid="admin1234";
			rvo.setUserid(userid);
			
			mapper.adminreview_ok(rvo);
			return "redirect:/admin/adminreview";
		}
		else
		{
			return "redirect:/main/main";
		}
	}
	
	@Override
	public String reviewdel(HttpServletRequest request) {
		String id=request.getParameter("id");
		mapper.reviewdel(id);
		return "redirect:/admin/adminreview";
	}

	@Override
	public String adminfood(HttpSession session) {
		if(session.getAttribute("userid")==null)
			return "redirect:/login/login";
		
		if(session.getAttribute("userid").equals("admin1234"))
		{
			return "/admin/adminfood";
		}
		else
		{
			return "redirect:/main/main";
		}
	}

	@Override
	public String alist(HttpSession session, HttpServletRequest request, Model model) {
		if(session.getAttribute("userid")==null)
			return "redirect:/login/login";
		
		if(session.getAttribute("userid").equals("admin1234"))
		{
			String fcode=request.getParameter("fcode");
			ArrayList<FoodVo> alist=mapper.alist(fcode);
			model.addAttribute("alist",alist);
			return "/admin/alist";
		}
		else
		{
			return "redirect:/main/main";
		}
	}
	
	@Override
	public String menuall(HttpSession session, HttpServletRequest request, Model model) {
		
		if(session.getAttribute("userid")==null)
			return "redirect:/login/login";
		
		if(session.getAttribute("userid").equals("admin1234"))
		{
			String fcode = request.getParameter("fcode");
			ArrayList<FoodVo> menuall = mapper.menuall(fcode);
			 
			model.addAttribute("flist", menuall);
			return "/admin/menuall";
		}
		else
		{
			return "redirect:/main/main";
		}
	}

	@Override
	public String menuone(HttpSession session, HttpServletRequest request, Model model) {
		
		if(session.getAttribute("userid")==null)
			return "redirect:/login/login";
		
		if(session.getAttribute("userid").equals("admin1234"))
		{
			String state = request.getParameter("state");
			ArrayList<FoodVo> menuone = mapper.menuone(state);
			 
			model.addAttribute("flist", menuone);
			return "/admin/menuone";
		}
		else
		{
			return "redirect:/main/main";
		}
	}
	


	@Override
	public String acontent(HttpSession session, HttpServletRequest request, Model model) {
		if(session.getAttribute("userid")==null)
			return "redirect:/login/login";
		
		if(session.getAttribute("userid").equals("admin1234"))
		{
			String fcode=request.getParameter("fcode");
			FoodVo fvo = mapper.acontent(fcode);
			model.addAttribute("fvo", fvo);
			return "/admin/acontent";
		}
		else
		{
			return "redirect:/main/main";
		}
	}

	@Override
	public String acontent_ok(HttpSession session, HttpServletRequest request) {
		if(session.getAttribute("userid")==null)
			return "redirect:/login/login";
		
		if(session.getAttribute("userid").equals("admin1234"))
		{
			
			
			String fcode = request.getParameter("fcode");
			String shop = request.getParameter("shop");
			int minorder = Integer.parseInt(request.getParameter("minorder"));
			int baeprice = Integer.parseInt(request.getParameter("baeprice"));
			String baetime = request.getParameter("baetime");
			String juso = request.getParameter("juso");
			String shop_sogae = request.getParameter("shop_sogae");
			String hours =request.getParameter("hours");
			String holiday = request.getParameter("holiday");
			String phone = request.getParameter("phone");
			String area = request.getParameter("area");
			String boss = request.getParameter("boss");
			String regi_number = request.getParameter("regi_number");
			String benefit = request.getParameter("benefit");
			int recent_orders = Integer.parseInt(request.getParameter("recent_orders"));
			int total_orders = Integer.parseInt(request.getParameter("total_orders"));
			int wish = Integer.parseInt(request.getParameter("wish"));
			String boss_gongji = request.getParameter("boss_gongji");
			String boss_one = request.getParameter("boss_one");
			String m1 = request.getParameter("m1");
			String m1_ex = request.getParameter("m1_ex");
			int m1_price = Integer.parseInt(request.getParameter("m1_price"));
			String m2 = request.getParameter("m2");
			String m2_ex = request.getParameter("m2_ex");
			int m2_price = Integer.parseInt(request.getParameter("m2_price"));
			String m3 = request.getParameter("m3");
			String m3_ex = request.getParameter("m3_ex");
			int m3_price = Integer.parseInt(request.getParameter("m3_price"));
			String m4 = request.getParameter("m4");
			String m4_ex = request.getParameter("m4_ex");
			int m4_price = Integer.parseInt(request.getParameter("m4_price"));
			String m5 = request.getParameter("m5");
			String m5_ex = request.getParameter("m5_ex");
			int m5_price = Integer.parseInt(request.getParameter("m5_price"));
			int m1_su = Integer.parseInt(request.getParameter("m1_su"));
			int m2_su = Integer.parseInt(request.getParameter("m2_su"));
			int m3_su = Integer.parseInt(request.getParameter("m3_su"));
			int m4_su = Integer.parseInt(request.getParameter("m4_su"));
			int m5_su = Integer.parseInt(request.getParameter("m5_su"));
			// int state = Integer.parseInt(multi.getParameter("state"));
			
			int state;
			if(request.getParameter("state") == null) {
				state = 0;
			}else {
				state = 1;
			}
			
			int fran;
			if(request.getParameter("fran") == null) {
				fran = 0;
			}else {
				fran = 1;
			}
			
			
			
			
			FoodVo fvo = new FoodVo();
			fvo.setFcode(fcode);
			fvo.setShop(shop);
			fvo.setBaeprice(baeprice);
			fvo.setBaetime(baetime);
			fvo.setMinorder(minorder);
			fvo.setJuso(juso);
			fvo.setShop_sogae(shop_sogae);
			fvo.setHours(hours);
			fvo.setHoliday(holiday);
			fvo.setPhone(phone);
			fvo.setArea(area);
			fvo.setBoss(boss);
			fvo.setRegi_number(regi_number);
			fvo.setBenefit(benefit);
			fvo.setRecent_orders(recent_orders);
			fvo.setTotal_orders(total_orders);
			fvo.setWish(wish);
			fvo.setBoss_gongji(boss_gongji);
			fvo.setBoss_one(boss_one);
			fvo.setM1(m1);
			fvo.setM1_ex(m1_ex);
			fvo.setM1_price(m1_price);
			fvo.setM2(m2);
			fvo.setM2_ex(m2_ex);
			fvo.setM2_price(m2_price);
			fvo.setM3(m3);
			fvo.setM3_ex(m3_ex);
			fvo.setM3_price(m3_price);
			fvo.setM4(m4);
			fvo.setM4_ex(m4_ex);
			fvo.setM4_price(m4_price);
			fvo.setM5(m5);
			fvo.setM5_ex(m5_ex);
			fvo.setM5_price(m5_price);
			fvo.setM1_su(m1_su);
			fvo.setM2_su(m2_su);
			fvo.setM3_su(m3_su);
			fvo.setM4_su(m4_su);
			fvo.setM5_su(m5_su);
			fvo.setState(state);
			fvo.setFran(fran);
			
			mapper.acontent_ok(fvo);
			
			return "redirect:/admin/acontent?fcode="+fcode;
		}
		else
		{
			return "redirect:/main/main";
		}
	}

	@Override
	public String areview(AreviewVo avo, HttpSession session) {
		String userid=session.getAttribute("userid").toString();
		avo.setUserid(userid);
		mapper.areview(avo);
		
		
		mapper.setState2("review", avo.getRid());
		return "redirect:/admin/adminreview";
	}

	@Override
	public String changeimage(HttpServletRequest request) throws IOException {
		String path=request.getRealPath("resources/food");
		int size=1024*1024*10;
		MultipartRequest multi=new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());
		
	
		String fcode=multi.getParameter("fcode");
		String delfimg=multi.getParameter("delfimg");
		String delm1_img=multi.getParameter("delm1_fimg");
		String delm2_img=multi.getParameter("delm2_fimg");
		String delm3_img=multi.getParameter("delm3_fimg");
		String delm4_img=multi.getParameter("delm4_fimg");
		String delm5_img=multi.getParameter("delm5_fimg");
		String fimg=multi.getFilesystemName("fimg");
		String m1_img=multi.getFilesystemName("m1_img");
		String m2_img=multi.getFilesystemName("m2_img");
		String m3_img=multi.getFilesystemName("m3_img");
		String m4_img=multi.getFilesystemName("m4_img");
		String m5_img=multi.getFilesystemName("m5_img");
		String id=multi.getParameter("id");
		String sql="";
		
		System.out.println(fcode);
		
		if(fimg==null && m1_img==null && m2_img==null && m3_img==null && m4_img==null && m5_img==null)
		{
			// 실행X
		}
		
		else if(fimg!=null && m1_img==null && m2_img==null && m3_img==null && m4_img==null && m5_img==null)
	     {
		      sql="set fimg='"+fimg+"' ";
		      mapper.changeimage(sql,id,fcode);
		      
		      File file=new File(path+"/"+delfimg);
		      if(file.exists())
		    	  file.delete();
	     }
		
		else if(fimg==null && m1_img!=null && m2_img==null && m3_img==null && m4_img==null && m5_img==null)
		     {
			      sql="set m1_img='"+m1_img+"' ";
			      mapper.changeimage(sql,id,fcode);
			      
			      File file=new File(path+"/"+delm1_img);
			      if(file.exists())
			    	  file.delete();
		     }
		     else if(fimg==null && m1_img==null && m2_img!=null && m3_img==null && m4_img==null && m5_img==null)
		          {
		    	       sql="set m2_img='"+m2_img+"' ";
		    	       mapper.changeimage(sql,id,fcode);
		    	       File file=new File(path+"/"+delm2_img);
					      if(file.exists())
					    	  file.delete();
		          }
		
		     else if(fimg==null && m1_img==null && m2_img==null && m3_img!=null && m4_img==null && m5_img==null)
	          {
	    	       sql="set m3_img='"+m3_img+"' ";
	    	       mapper.changeimage(sql,id,fcode);
	    	       File file=new File(path+"/"+delm3_img);
				      if(file.exists())
				    	  file.delete();
	          }
		
		     else if(fimg==null && m1_img==null && m2_img==null && m3_img==null && m4_img!=null && m5_img==null)
	          {
	    	       sql="set m4_img='"+m4_img+"' ";
	    	       mapper.changeimage(sql,id,fcode);
	    	       File file=new File(path+"/"+delm4_img);
				      if(file.exists())
				    	  file.delete();
	          }
		
		     else if(fimg==null && m1_img==null && m2_img==null && m3_img==null && m4_img==null && m5_img!=null)
	          {
	    	       sql="set m5_img='"+m5_img+"' ";
	    	       mapper.changeimage(sql,id,fcode);
	    	       File file=new File(path+"/"+delm5_img);
				      if(file.exists())
				    	  file.delete();
	          }
		          else
		          {
		        	   sql="set fimg='"+fimg+"' ,m1_img='"+m1_img+"' ,m2_img='"+m2_img+"',m3_img='"+m3_img+"',m4_img='"+m4_img+"',m5_img='"+m5_img+"' ";
		        	   mapper.changeimage(sql,id,fcode);
		        	   File file=new File(path+"/"+delfimg);
					      if(file.exists())
					    	  file.delete();
					      
					   file=new File(path+"/"+delm1_img);
					      if(file.exists())
					    	  file.delete();    
					      
					      file=new File(path+"/"+delm2_img);
					      if(file.exists())
					    	  file.delete();    
					      
					      file=new File(path+"/"+delm3_img);
					      if(file.exists())
					    	  file.delete();    
					      
					      file=new File(path+"/"+delm4_img);
					      if(file.exists())
					    	  file.delete();    
					      
					      file=new File(path+"/"+delm5_img);
					      if(file.exists())
					    	  file.delete();    
		          } 
		
		FoodVo fvo = new FoodVo();
		fvo.setFcode(fcode);
		mapper.changeimage(sql,id,fcode);

		
		/*
		if( !(pimg==null && cimg==null) )
		{
		   mapper.changeimage(sql,id);
		}
		*/
		
		return "redirect:/admin/acontent?fcode="+fcode;
	}
	@Override
	public String menuallSearch(HttpServletRequest request, Model model, String keyword, HttpSession session) {
		
		if(session.getAttribute("userid")==null)
			return "redirect:/login/login";
		
		if(session.getAttribute("userid").equals("admin1234"))
		{
		String fcode = request.getParameter("fcode");
		ArrayList<FoodVo> menuallSearch = mapper.menuallSearch(fcode, keyword);
		model.addAttribute("flist", menuallSearch);
		
		HashMap<String, Object> data = new HashMap<String, Object>();
		data.put("keyword", keyword);
		return "/admin/menuallSearch";
		}
		
		else
		{
			return "redirect:/main/main";
		}
		
	}

	@Override
	public String franchise(HttpServletRequest request, Model model, HttpSession session) {
		if(session.getAttribute("userid")==null)
			return "redirect:/login/login";
		
		if(session.getAttribute("userid").equals("admin1234"))
		{
		
		String fran = request.getParameter("fran");
		ArrayList<FoodVo> franchise = mapper.franchise(fran);
		 
		model.addAttribute("alist", franchise);
		return "/admin/franchise";
		}
		else
		{
			return "redirect:/main/main";
		}
	}

	@Override
	public String goodtaste(HttpServletRequest request, Model model, HttpSession session) {
		if(session.getAttribute("userid")==null)
			return "redirect:/login/login";
		
		if(session.getAttribute("userid").equals("admin1234"))
		{
		String total_orders = request.getParameter("total_orders");
		ArrayList<FoodVo> goodtaste = mapper.goodtaste(total_orders);
		 
		model.addAttribute("alist", goodtaste);
		return "/admin/goodtaste";
		}
		else
		{
			return "redirect:/main/main";
		}
	}
	
	@Override
	public String write_ok(GongjiVo gvo)
	{
		mapper.write_ok(gvo);
		return "redirect:/admin/glist";
	}
	
	@Override
	public String glist(Model model,HttpSession session)
	{
		if(session.getAttribute("userid")==null)
			return "redirect:/login/login";
		
		if(session.getAttribute("userid").equals("admin1234"))
		{
		String userid=session.getAttribute("userid").toString();
		ArrayList<GongjiVo> list=mapper.glist();
		model.addAttribute("list", list);
		model.addAttribute("userid", userid);
		return "/admin/glist";
		}
		else
		{
			return "redirect:/main/main";
		}
	}
	
	@Override
	public String gcontent(HttpServletRequest request, Model model,HttpSession session)
	{
		if(session.getAttribute("userid")==null)
			return "redirect:/login/login";
		
		if(session.getAttribute("userid").equals("admin1234"))
		{
		String id=request.getParameter("id");
		GongjiVo gvo=mapper.gcontent(id);
		model.addAttribute("gvo", gvo);
		return "/admin/gcontent";
		}
		else
		{
			return "redirect:/main/main";
		}
	}
	
	@Override
	public String delete(GongjiVo gvo)
	{
		mapper.delete(gvo.getId());
		return "redirect:/admin/glist";
	}
	
	@Override
	public String update(GongjiVo gvo, Model model)
	{
		GongjiVo gvo2=mapper.update(gvo);
		model.addAttribute("gvo", gvo2);
	    return "/admin/update";	
	}
	
	@Override
	public String update_ok(GongjiVo gvo)
	{
		mapper.update_ok(gvo);
		return "redirect:glist";
	}
	
}

	

