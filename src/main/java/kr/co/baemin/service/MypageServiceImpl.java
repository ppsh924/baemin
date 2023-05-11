package kr.co.baemin.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.baemin.mapper.MypageMapper;
import kr.co.baemin.vo.AreviewVo;
import kr.co.baemin.vo.CartVo;
import kr.co.baemin.vo.FoodVo;
import kr.co.baemin.vo.GumaeVo;
import kr.co.baemin.vo.ReviewVo;

@Service
@Qualifier("ms")
public class MypageServiceImpl implements MypageService{
	@Autowired
	private MypageMapper mapper;

	@Override
	public String wishview(HttpSession session, Model model) {
		
		if(session.getAttribute("userid") == null) {
			return "redirect:/login/login";
		}else {
			String userid = session.getAttribute("userid").toString();
			model.addAttribute("wlist", mapper.wishview(userid));
			return "/mybaemin/wishview";
		}
	}

	@Override
	public String wishdel(HttpServletRequest request) {
		String id = request.getParameter("id");
		mapper.wishdel(id);
		return "redirect:/mybaemin/wishview";
	}

	@Override
	public void cartadd(HttpServletRequest request, HttpSession session, PrintWriter out) {
		String fcode = request.getParameter("fcode");	
		String menu = request.getParameter("menu");
		String su = request.getParameter("su");
	    String price = request.getParameter("price");
	    String baeprice = request.getParameter("baeprice");
	    
		if(session.getAttribute("userid") != null) {
			String userid = session.getAttribute("userid").toString();
			try {
				int cnt = mapper.cart_check(menu, userid);
				if(cnt == 1) {
					mapper.cartup(su, price, menu, userid);
				}else {
					mapper.cartadd(fcode, menu, su, userid, price, baeprice);
				}
				out.print("0");
			}catch(Exception e) {
				out.print("1");
			}
		}
	}

	@Override
	public String cartview(HttpSession session, Model model) {
		if(session.getAttribute("userid") == null) {
			return "redirect:/login/login";
		}else {
			String userid = session.getAttribute("userid").toString();
			ArrayList<CartVo> clist = mapper.cartview(userid);
			for(int i=0; i<clist.size(); i++) {
				int id = clist.get(i).getId();
				clist.get(i).setId(id);
			}
			model.addAttribute("clist", clist);
			
			// 메뉴가격, 배달팁 
			String proprice = "";
			String probae = "";
			for(int i=0; i<clist.size(); i++) {
				proprice = proprice + clist.get(i).getPrice()+",";
				probae = probae + clist.get(i).getBaeprice() + ",";
			}
			
			int chongp = 0;
			int chongs = 0;
			int takeout = 2000;
			for (int i = 0; i < clist.size(); i++) {
				int su = clist.get(i).getSu();
				int price = clist.get(i).getPrice();
				chongp = chongp + price;
		        chongs = chongs + su;
				takeout = chongp - takeout;
			}
			model.addAttribute("chongp", chongp);
			model.addAttribute("chongs", chongs);
			model.addAttribute("takeout", takeout);
			
			model.addAttribute("proprice", proprice);
			model.addAttribute("probae", probae);
			
			return "/mybaemin/cartview";
		}
	}
	
	@Override
	public String cartstate(HttpServletRequest request, PrintWriter out,HttpSession session)
	{
		String state=request.getParameter("state");
		String baeprice=request.getParameter("baeprice2");
		String userid=session.getAttribute("userid").toString();
		System.out.println(userid);
		try {
			mapper.cartstate(state,baeprice,userid);
		
		}catch(Exception e) {
			out.print("1");
		}
		return "redirect:/mybaemin/cartview";
	}

	@Override
	public String cartdel(HttpServletRequest request) {
		String[] id = request.getParameter("id").split(",");
		for(int i=0; i<id.length; i++) {
			System.out.println(id[i]);
			mapper.cartdel(id[i]);
		}
		return "redirect:/mybaemin/cartview";
	}

	@Override
	public void cartsu(HttpServletRequest request, PrintWriter out, HttpSession session) {
		int su = Integer.parseInt(request.getParameter("su"));
		String menu = request.getParameter("menu");
		String userid = session.getAttribute("userid").toString();
		//int price=(int)Double.parseDouble(request.getParameter("price"))*su;
		int price=Integer.parseInt(request.getParameter("price"))*su;
		
		try {
			mapper.cartsu(su, price,menu, userid);
			out.print("0");
		}catch(Exception e) {
			out.print("1");
		}
		
	}

	@Override
	public String jumunview(HttpSession session, Model model) {
		String userid=session.getAttribute("userid").toString();
		model.addAttribute("tmap", mapper.jumunview(userid));
		
		return "/mybaemin/jumunview";
	}
	
	@Override
	public String chgstate(HttpServletRequest request) {
		String state2=request.getParameter("state2");
	
		String jumuncode=request.getParameter("jumuncode");
		mapper.chgstate(state2,jumuncode);
		
		return "redirect:/mybaemin/jumunview";
	}
	
	@Override
	public String jumundetail(HttpSession session, Model model, HttpServletRequest request) {
		String userid=session.getAttribute("userid").toString();
		String jumuncode = request.getParameter("jumuncode");
		ArrayList<HashMap<String,String>> tmap=mapper.jumundetail(userid, jumuncode);
		model.addAttribute("tmap", mapper.jumundetail(userid, jumuncode));
		
		int totalcprice=0;  //총결제금액
		int totalbaesong=0; //총배송비
		int totalprice=0;   //총 상품금액
		int totalcprice2=0;
		 //총상품가격 , 총배송비 , 총결제금액
		for(int i=0;i<tmap.size();i++)
		{
			// map.get(key) 가져온 값은 String이지만
			// String.valueOf(map.get(key)) 를 통해서 변경 후 사용
			
			int imsi=Integer.parseInt( String.valueOf(tmap.get(i).get("cprice") ) );   //상품원래가격
			
        	/*int su=Integer.parseInt( String.valueOf( tmap.get(i).get("su")));
        	totalprice=totalprice+imsi*su;   // 상품금액
			*/
        
        	totalcprice=totalcprice+ Integer.parseInt( String.valueOf( tmap.get(i).get("cprice") ));  // 결제금액
        	  
		}
		
		//System.out.println(totalprice);
		//model.addAttribute("totalprice", totalprice);
		//model.addAttribute("totalbaesong", totalbaesong);
		model.addAttribute("totalcprice",totalcprice);
		
		return "/mybaemin/jumundetail";
	}

	@Override
	public String jumundel(HttpServletRequest request) {
		String[] id = request.getParameter("id").split(",");
		for(int i=0; i<id.length; i++) {
			System.out.println(id[i]);
			mapper.jumundel(id[i]);
		}
		return "redirect:/mybaemin/jumunview";
	}

	@Override
	public String review(HttpServletRequest request, Model model,HttpSession session) {
		String userid=session.getAttribute("userid").toString();
		String guid=request.getParameter("guid");
		String jumuncode=request.getParameter("jumuncode");
		String id=request.getParameter("id");
		
		FoodVo fvo=mapper.getFood2(guid);
		model.addAttribute("fvo",fvo);
		model.addAttribute("guid",guid);
		
		model.addAttribute("jumuncode",jumuncode);
		System.out.println(jumuncode+" "+userid);
		ArrayList<GumaeVo> glist=mapper.review(jumuncode,userid);
	    System.out.println(glist.size());
		model.addAttribute("glist",glist);
		
		return "/mybaemin/review";
	}


	@Override
	public String review_ok(HttpSession session, HttpServletRequest request) throws IOException {


		String path=request.getRealPath("resources/pro");
		int size=1024*1024*10;
		MultipartRequest multi=new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());
		
		String userid=session.getAttribute("userid").toString();
		String fcode=multi.getParameter("fcode");
		String fname=multi.getFilesystemName("fname");
		String content=multi.getParameter("content");
		String jumuncode=multi.getParameter("jumuncode");
		int guid=Integer.parseInt(multi.getParameter("guid"));
		int star=Integer.parseInt(multi.getParameter("star"));
		
		ReviewVo rvo=new ReviewVo();
	    rvo.setUserid(userid);
	    rvo.setFname(fname);
	    rvo.setFcode(fcode);
	    rvo.setContent(content);
	    rvo.setGuid(guid);
	    rvo.setStar(star);
	    rvo.setJumuncode(jumuncode);

	    
	    
	    mapper.review_ok(rvo);
	    

	    mapper.setHugi(rvo.getGuid());
	    

	    int star1=mapper.getStar(rvo.getFcode());  
	    mapper.setStar(star1,rvo.getFcode());
		return "redirect:/mybaemin/reviewlist";
	}

	@Override
	public String reviewlist(Model model, HttpSession session, GumaeVo gvo) {
		if(session.getAttribute("userid")==null)
		{
			return "redirect:/login/login";
		}
		else
		{
			String userid=session.getAttribute("userid").toString();
			
			ArrayList<HashMap<String,String>> tmap=mapper.getreviewlist(userid);
			model.addAttribute("tmap", tmap);
			
			
			
			
			
			return "/mybaemin/reviewlist";
		}
	}

	@Override
	public String reviewdel(HttpServletRequest request) {
		String id=request.getParameter("id");
		mapper.reviewdel(id);
		return "redirect:/mybaemin/reviewlist";
	}

	@Override
	public String update(HttpSession session, Model model, ReviewVo rvo) {
		if(session.getAttribute("userid")==null)
		{
			return "redirect:/login/login";
		}
		else
		{
			String userid=session.getAttribute("userid").toString();
			
			ArrayList<HashMap<String,String>> tmap=mapper.update(userid);
			model.addAttribute("tmap", tmap);
			
			
			
			
			
			return "/mybaemin/update";
		}
	}
}
