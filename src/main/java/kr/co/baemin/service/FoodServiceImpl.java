package kr.co.baemin.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.time.LocalDate;
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

import kr.co.baemin.mapper.FoodMapper;
import kr.co.baemin.vo.BaesongVo;
import kr.co.baemin.vo.CartVo;
import kr.co.baemin.vo.FoodVo;
import kr.co.baemin.vo.GumaeVo;
import kr.co.baemin.vo.MemberVo;
import kr.co.baemin.vo.ReviewVo;

@Service
@Qualifier("fs")
public class FoodServiceImpl implements FoodService{
	@Autowired
	private FoodMapper mapper;

	@Override
	public String food(Model model) {
		// 대분류 테이블을 읽어서 내용을 view에 전달
		model.addAttribute("dae", mapper.getDae());
		return "/food/food";
	}

	@Override
	public void getCode(HttpServletRequest request, PrintWriter out) {
		String fcode = request.getParameter("fcode");
		out.print(mapper.getCode(fcode));
	}

	@Override
	public String food_ok(HttpServletRequest request) throws IOException {
		String path = request.getRealPath("resources/food");
		int size = 1024 * 1024 * 10;
		MultipartRequest multi = new MultipartRequest(request, path, size, "utf-8", new DefaultFileRenamePolicy());
		
		String fcode = multi.getParameter("fcode");
		String fimg = multi.getFilesystemName("fimg");
		String shop = multi.getParameter("shop");
		int minorder = Integer.parseInt(multi.getParameter("minorder"));
		int baeprice = Integer.parseInt(multi.getParameter("baeprice"));
		String baetime = multi.getParameter("baetime");
		String juso = multi.getParameter("juso");
		String shop_sogae = multi.getParameter("shop_sogae");
		String hours = multi.getParameter("hours");
		String holiday = multi.getParameter("holiday");
		String phone = multi.getParameter("phone");
		String area = multi.getParameter("area");
		String boss = multi.getParameter("boss");
		String regi_number = multi.getParameter("regi_number");
		String benefit = multi.getParameter("benefit");
		int recent_orders = Integer.parseInt(multi.getParameter("recent_orders"));
		int total_orders = Integer.parseInt(multi.getParameter("total_orders"));
		int wish = Integer.parseInt(multi.getParameter("wish"));
		String boss_gongji = multi.getParameter("boss_gongji");
		String boss_one = multi.getParameter("boss_one");
		String m1 = multi.getParameter("m1");
		String m1_img = multi.getFilesystemName("m1_img");
		String m1_ex = multi.getParameter("m1_ex");
		int m1_price = Integer.parseInt(multi.getParameter("m1_price"));
		String m2 = multi.getParameter("m2");
		String m2_img = multi.getFilesystemName("m2_img");
		String m2_ex = multi.getParameter("m2_ex");
		int m2_price = Integer.parseInt(multi.getParameter("m2_price"));
		String m3 = multi.getParameter("m3");
		String m3_img = multi.getFilesystemName("m3_img");
		String m3_ex = multi.getParameter("m3_ex");
		int m3_price = Integer.parseInt(multi.getParameter("m3_price"));
		String m4 = multi.getParameter("m4");
		String m4_img = multi.getFilesystemName("m4_img");
		String m4_ex = multi.getParameter("m4_ex");
		int m4_price = Integer.parseInt(multi.getParameter("m4_price"));
		String m5 = multi.getParameter("m5");
		String m5_img = multi.getFilesystemName("m5_img");
		String m5_ex = multi.getParameter("m5_ex");
		int m5_price = Integer.parseInt(multi.getParameter("m5_price"));
		int m1_su = Integer.parseInt(multi.getParameter("m1_su"));
		int m2_su = Integer.parseInt(multi.getParameter("m2_su"));
		int m3_su = Integer.parseInt(multi.getParameter("m3_su"));
		int m4_su = Integer.parseInt(multi.getParameter("m4_su"));
		int m5_su = Integer.parseInt(multi.getParameter("m5_su"));
		// int state = Integer.parseInt(multi.getParameter("state"));
		
		int state;
		if(multi.getParameter("state") == null) {
			state = 0;
		}else {
			state = 1;
		}
		
		int fran;
		if(multi.getParameter("fran") == null) {
			fran = 0;
		}else {
			fran = 1;
		}
		
		
		FoodVo fvo = new FoodVo();
		fvo.setFcode(fcode);
		fvo.setFimg(fimg);
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
		fvo.setM1_img(m1_img);
		fvo.setM1_ex(m1_ex);
		fvo.setM1_price(m1_price);
		fvo.setM2(m2);
		fvo.setM2_img(m2_img);
		fvo.setM2_ex(m2_ex);
		fvo.setM2_price(m2_price);
		fvo.setM3(m3);
		fvo.setM3_img(m3_img);
		fvo.setM3_ex(m3_ex);
		fvo.setM3_price(m3_price);
		fvo.setM4(m4);
		fvo.setM4_img(m4_img);
		fvo.setM4_ex(m4_ex);
		fvo.setM4_price(m4_price);
		fvo.setM5(m5);
		fvo.setM5_img(m5_img);
		fvo.setM5_ex(m5_ex);
		fvo.setM5_price(m5_price);
		fvo.setM1_su(m1_su);
		fvo.setM2_su(m2_su);
		fvo.setM3_su(m3_su);
		fvo.setM4_su(m4_su);
		fvo.setM5_su(m5_su);
		fvo.setState(state);
		fvo.setFran(fran);
		
		mapper.food_ok(fvo);
		
		return "redirect:/food/food";
	}

	@Override
	public String flist(HttpServletRequest request, Model model) {
		String fcode = request.getParameter("fcode");
		ArrayList<FoodVo> flist = mapper.flist(fcode);
		model.addAttribute("flist", flist);
		return "/food/flist";
	}

	@Override
	public String fcontent(HttpServletRequest request, Model model, HttpSession session) {
		String fcode = request.getParameter("fcode");
		FoodVo fvo = mapper.fcontent(fcode);
		model.addAttribute("fvo", fvo);
	    System.out.println("내용 :"+ fvo.getBoss_one()); 
	    		
		
		// model.addAttribute("clist", clist);
		
		// System.out.println(fvo.getFimg());
		// 현재 사용자의 아이디로 현재 가게가 wish, cart 테이블에 존재여부를 확인
		if(session.getAttribute("userid") != null) {
			String userid = session.getAttribute("userid").toString();
			int wcnt = mapper.getWish(fcode, userid);
			int ccnt = mapper.chknum(fcode, userid);
			model.addAttribute("wcnt", wcnt);
			model.addAttribute("ccnt", ccnt);
 
			// System.out.println(ccnt);
			
			// cart테이블의 내용 읽어오기
			ArrayList<CartVo> clist = mapper.getCart(userid);
			int chongp = 0;
			int chongs = 0;
			for(int i=0; i<clist.size(); i++) {
				int su = clist.get(i).getSu();
				int price = clist.get(i).getPrice();
		        // chong = chong + (su * price);
		        chongp = chongp + price;
		        chongs = chongs + su;
			}
			model.addAttribute("chongp", chongp);
			model.addAttribute("chongs", chongs);
		}
		
		// 현재가게의 메뉴가 아닌 다른가계의 메뉴가  cart에 있는지 체크
		int fcodenum=mapper.getCartFood(fcode);
		model.addAttribute("fcodenum",fcodenum);
		// System.out.println(fcodenum);
		

		ArrayList<ReviewVo> rlist=mapper.getReview(fcode);
		
		for(int i=0;i<rlist.size();i++)
		{
			String content=rlist.get(i).getContent().replace("\r\n", "<br>");
			rlist.get(i).setContent(content);
		}
        model.addAttribute("rlist",rlist);
		
		return "/food/fcontent";
	}

	@Override
	public void wish_add(HttpServletRequest request, HttpSession session, PrintWriter out) {
		String fcode = request.getParameter("fcode");
		String userid = session.getAttribute("userid").toString();
		int ck = Integer.parseInt(request.getParameter("ck"));
		
		if(ck == 1) { // 삭제
			try {
				mapper.wish_del(fcode, userid);
				out.print("0");
			}catch(Exception e) {
				out.print("1");
			}
		}else { // 추가
			try {
				mapper.wish_add(fcode, userid);
				out.print("0");
			}catch(Exception e) {
				out.print("1");
			}
		}
	}

	@Override
	public String menuall(HttpServletRequest request, Model model) {
		String fcode = request.getParameter("fcode");
		ArrayList<FoodVo> menuall = mapper.menuall(fcode);
		model.addAttribute("flist", menuall);
		return "/food/menuall";
	}

	@Override
	public String menuone(HttpServletRequest request, Model model) {
		String state = request.getParameter("state");
		ArrayList<FoodVo> menuone = mapper.menuone(state);
		 
		model.addAttribute("flist", menuone);
		return "/food/menuone";
	}
	
	@Override
	public String franchise(HttpServletRequest request, Model model) {
		String fran = request.getParameter("fran");
		ArrayList<FoodVo> franchise = mapper.franchise(fran);
		 
		model.addAttribute("flist", franchise);
		return "/food/franchise";
	}

	@Override
	public String goodtaste(HttpServletRequest request, Model model) {
		String total_orders = request.getParameter("total_orders");
		ArrayList<FoodVo> goodtaste = mapper.goodtaste(total_orders);
		 
		model.addAttribute("flist", goodtaste);
		return "/food/goodtaste";
	}
	
	@Override
	public String menu_put(HttpServletRequest request, Model model) {
		String m1 = request.getParameter("m1");
		FoodVo fvo = mapper.menu_put(m1);
		model.addAttribute("fvo", fvo);
		
		return "/excludes/menu_put";
	}

	@Override
	public String menu_put2(HttpServletRequest request, Model model) {
		String m2 = request.getParameter("m2");
		FoodVo fvo = mapper.menu_put2(m2);
		model.addAttribute("fvo", fvo);
		
		return "/excludes/menu_put2";
	}

	@Override
	public String menu_put3(HttpServletRequest request, Model model) {
		String m3 = request.getParameter("m3");
		FoodVo fvo = mapper.menu_put3(m3);
		model.addAttribute("fvo", fvo);
		
		return "/excludes/menu_put3";
	}

	@Override
	public String menu_put4(HttpServletRequest request, Model model) {
		String m4 = request.getParameter("m4");
		FoodVo fvo = mapper.menu_put4(m4);
		model.addAttribute("fvo", fvo);
		
		return "/excludes/menu_put4";
	}

	@Override
	public String menu_put5(HttpServletRequest request, Model model) {
		String m5 = request.getParameter("m5");
		FoodVo fvo = mapper.menu_put5(m5);
		model.addAttribute("fvo", fvo);
		
		return "/excludes/menu_put5";
	}

	@Override
	public void cartAllDel(PrintWriter out) {
		try {
			mapper.cartAllDel();
			out.print(0);
		} catch(Exception e) {
			out.print("1");
		}
	}

	@Override
	public String menuallSearch(HttpServletRequest request, Model model, String keyword) {
		String fcode = request.getParameter("fcode");
		ArrayList<FoodVo> menuallSearch = mapper.menuallSearch(fcode, keyword);
		model.addAttribute("flist", menuallSearch);
		
		HashMap<String, Object> data = new HashMap<String, Object>();
		data.put("keyword", keyword);
		
		return "/food/menuallSearch";
	}
	
	@Override
	public String gumae(HttpServletRequest request, HttpSession session, Model model) {
		String userid=session.getAttribute("userid").toString();
		MemberVo mvo=mapper.getMember(userid);
		model.addAttribute("mvo", mvo);
		
		//배송지 정보: baesong테이블에서 gibon필드가 1인 정보를 읽어와서 전달
		BaesongVo bvo=mapper.getJuso(userid);
		if(bvo == null){
			//null이면 member테이블의 주소를 baesong테이블에 추가
			BaesongVo bvo2=new BaesongVo();
			bvo2.setPhone(mvo.getPhone());
			bvo2.setZip(mvo.getZip());
			bvo2.setJuso(mvo.getJuso());
			bvo2.setJuso_etc(mvo.getJuso_etc());
			bvo2.setUserid(userid);
			bvo2.setId(mvo.getId());
			
			mapper.setBaesong(bvo2);
			
			model.addAttribute("bvo", bvo2);
		}else {
			model.addAttribute("bvo", bvo);
		}
         
		//상품정보를 전달
		String[] fcode=request.getParameterValues("fcode"); 
		String[] su=request.getParameterValues("su"); 
		String[] menu=request.getParameterValues("menu");
	    int state=Integer.parseInt(request.getParameter("state"));
	    //for(int i=0;i<su.length;i++)
	    	//System.out.println(su[i]);
		
	    ArrayList<CartVo> clist=new ArrayList<CartVo>();
		int pprice=0;   //총상품가격
		int payprice=0; //결제금액
		int pbae=0;  
		String privateprice="";  
		for(int i=0;i<menu.length;i++) {
			
			CartVo cvo=mapper.cartv(menu[i]);
			//pvo에 구입수량을 setter
			cvo.setSu(Integer.parseInt(su[i]));
			clist.add(cvo);
			pbae=cvo.getBaeprice();
			//총상품가격
			int imsi=cvo.getPrice();
			pprice=pprice+imsi;
		
			privateprice=privateprice+imsi+",";   //120000, 250000, 12600,
		}
		
		payprice=pprice+pbae;
		model.addAttribute("state", state);
		model.addAttribute("pprice", pprice);
		model.addAttribute("pbae", pbae);
		model.addAttribute("payprice", payprice);
		model.addAttribute("privateprice", privateprice);
		model.addAttribute("clist", clist);
		model.addAttribute("fcode", request.getParameter("fcode"));
		model.addAttribute("su", request.getParameter("su"));
		model.addAttribute("menu", request.getParameter("menu"));
		
		/*String fcode=request.getParameter("fcode");
		String m1_su=request.getParameter("m1_su");
		String m2_su=request.getParameter("m2_su");
		String m3_su=request.getParameter("m3_su");
		String m4_su=request.getParameter("m4_su");
		String m5_su=request.getParameter("m5_su");
		
		
		ArrayList<FoodVo> flist=new ArrayList<FoodVo>();
		int fprice=0; //총상품가격
		int baeprice=0; //배송비
		int payprice=0; //결제금액
		 
		 	  
			FoodVo fvo=mapper.fcontent(fcode);
			fvo.setM1_su(Integer.parseInt(m1_su));
			fvo.setM2_su(Integer.parseInt(m2_su));
			fvo.setM3_su(Integer.parseInt(m3_su));
			fvo.setM4_su(Integer.parseInt(m4_su));
			fvo.setM5_su(Integer.parseInt(m5_su));
			
			
			int imsi=(fvo.getM1_price()*fvo.getM1_su())+(fvo.getM2_price()*fvo.getM2_su())+(fvo.getM3_price()*fvo.getM3_su())+(fvo.getM4_price()*fvo.getM4_su())+(fvo.getM5_price()*fvo.getM5_su());
		    fprice=fprice+imsi;
		    baeprice=fvo.getBaeprice();
		    
		    payprice=fprice+baeprice;
		
		    model.addAttribute("fprice", fprice);
			model.addAttribute("baeprice", baeprice);
			model.addAttribute("payprice", payprice);
			
			model.addAttribute("flist", flist);
			model.addAttribute("fcode", request.getParameter("fcode"));
			model.addAttribute("m1_su", request.getParameter("m1_su"));
			model.addAttribute("m2_su", request.getParameter("m2_su"));
			model.addAttribute("m3_su", request.getParameter("m3_su"));
			model.addAttribute("m4_su", request.getParameter("m4_su"));
			model.addAttribute("m5_su", request.getParameter("m5_su"));*/
	        return "/food/gumae";
	}
   
	@Override
	public String gumae_ok(int id, GumaeVo gvo,HttpSession session) {
		 
		gvo.setBae_id(id);  //배송테이블의 id값을 전달
		
		//주문코드를 생성
		// j년 월일
		LocalDate today=LocalDate.now();
		int y=today.getYear();
		int m=today.getMonthValue();
		String mm=m+"";
		if(mm.length()==1)
			mm="0"+mm;
		
		
		int d=today.getDayOfMonth();
		String dd=d+"";
		if(dd.length()==1)
			dd="0"+dd;
		String jumuncode="j"+y+mm+dd;
		
		int num=mapper.getJcode(jumuncode);
		
		String code=String.format("%04d", num);
		
		jumuncode=jumuncode+code;
		//System.out.println(jumuncode);
		gvo.setJumuncode(jumuncode);
		String userid=session.getAttribute("userid").toString();
		gvo.setUserid(userid);
		
		String[] fcode=gvo.getFcode().split(",");
		String[] su=gvo.getSu2().split(",");
		String[] menu=gvo.getMenu().split(",");
		String[] privaterprice=gvo.getPrivateprice().split(",");  //vo=>cprice
	   for(int i=0;i<su.length;i++)
		System.out.println(su[i]);
		int cn=0;		
		for(int i=0;i<fcode.length;i++)
		{
			//vo의 값을 배열에 있는 값으로 변경 뒤 저장
			gvo.setFcode(fcode[i]);
            gvo.setSu(Integer.parseInt(su[i]) );
            gvo.setCprice( Integer.parseInt(privaterprice[i]));
            gvo.setMenu(menu[i]);
           /* gvo.setState(i);
            cn=gvo.getState();
            if(cn==0)
            {*/	
			   mapper.gumae_ok(gvo);
			   mapper.cartalldel(userid);
            /*}*/
           /* else
            {
            	mapper.gumae
            }*/
		}
		
	 
		return "redirect:/food/jumun?jumuncode="+jumuncode;
	}
   
	@Override
	public String baeview(HttpSession session, Model model) {
		
		String userid=session.getAttribute("userid").toString();
		
		model.addAttribute("blist", mapper.baeview(userid));
		
		return "/food/baeview";
	}

	@Override
	public String jusoadd() {
		return "/food/jusoadd";
	}

	@Override
	public String jusoadd_ok(BaesongVo bvo, HttpSession session) {
		String userid=session.getAttribute("userid").toString();
		bvo.setUserid(userid);
		
		if(bvo.getGibon()==1) //추가되는 주소가 기본배송지가 된다면
		{
			//기존의 주소에서 gibon의 값을 0으로 변경..
			mapper.gibon(userid);
		}
		mapper.jusoadd_ok(bvo);
		
		return "redirect:/food/baeview";
	}

	@Override
	public String baeup(HttpServletRequest request, Model model) {
		String id=request.getParameter("id");
		BaesongVo bvo=mapper.baeup(id);
		
		model.addAttribute("bvo", bvo);
		return "/food/baeup";
	}

	@Override
	public String baeup_ok(BaesongVo bvo, HttpSession session) {
		String userid=session.getAttribute("userid").toString();
		if(bvo.getGibon()==1) //추가되는 주소가 기본배송지가 된다면
		{
		   mapper.gibon(userid);
		}
		  mapper.baeup_ok(bvo);
		  return "redirect:/food/baeview";
	}

	@Override
	public String baedel(HttpServletRequest request, HttpSession session) {
		String id=request.getParameter("id");
		int chk=Integer.parseInt(request.getParameter("chk"));
		
		// 배송지 삭제
		mapper.baedel(id);
		
		//기본 배송지일 경우 다른주소를 기본배송지로 선정.
		if(chk==1)
		{
			String userid=session.getAttribute("userid").toString();
			mapper.gibonchg(userid);
		}
		return "redirect:/food/baeview";
	}

	@Override
	public String chgcla(HttpServletRequest request, Model model) {
		String id=request.getParameter("id");
		String cla=request.getParameter("cla");
		model.addAttribute("id", id);
		model.addAttribute("cla", cla);
		return "/food/chgcla";
	}

	@Override
	public void chg_ok(HttpServletRequest request, PrintWriter out) {
		String id=request.getParameter("id");
		String cla=request.getParameter("cla");
		
		try
		{
			mapper.chg_ok(cla,id);
			out.print("0");
		}
		catch(Exception e)
		{
			out.print("1");
		}
		
	}

	@Override
	public String jumun(HttpServletRequest request, Model model) {
		String jumuncode=request.getParameter("jumuncode");
		ArrayList<HashMap<String,String>> tmap=mapper.getTotal(jumuncode);
		model.addAttribute("tmap", tmap);
		//System.out.println(tmap.size());
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
		
		return "/food/jumun";
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
}
