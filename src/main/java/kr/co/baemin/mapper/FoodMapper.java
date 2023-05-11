package kr.co.baemin.mapper;

import java.util.ArrayList;
import java.util.HashMap;

import kr.co.baemin.vo.AreviewVo;
import kr.co.baemin.vo.BaesongVo;
import kr.co.baemin.vo.CartVo;
import kr.co.baemin.vo.DaeVo;
import kr.co.baemin.vo.FoodVo;
import kr.co.baemin.vo.MemberVo;
import kr.co.baemin.vo.ReviewVo;
import kr.co.baemin.vo.GumaeVo;
import kr.co.baemin.vo.FoodVo;

public interface FoodMapper {
	public ArrayList<DaeVo> getDae();
	public int getCode(String fcode);
	public void food_ok(FoodVo fvo);
	public ArrayList<FoodVo> flist(String fcode);
	public FoodVo fcontent(String fcode);
	public void wish_add(String fcode, String userid);
	public void wish_del(String fcode, String userid);
	public int getWish(String fcode, String userid);
	public ArrayList<FoodVo> menuall(String fcode);
	public ArrayList<FoodVo> menuone(String state);
	public ArrayList<FoodVo> franchise(String fran);
	public ArrayList<FoodVo> goodtaste(String total_orders);
	public FoodVo menu_put(String m1);
	public FoodVo menu_put2(String m2);
	public FoodVo menu_put3(String m3);
	public FoodVo menu_put4(String m4);
	public FoodVo menu_put5(String m5);
	public ArrayList<CartVo> getCart(String userid);
	
	public int getCartFood(String fcode);
	public void cartAllDel();
	public ArrayList<FoodVo> menuallSearch(String fcode, String keyword);
	public int chknum(String fcode, String userid);
	
	public MemberVo getMember(String userid);
    public BaesongVo getJuso(String userid);
    public void setBaesong(BaesongVo bvo);
    public ArrayList<BaesongVo> baeview(String userid);
    public void jusoadd_ok(BaesongVo bvo);
    public BaesongVo baeup(String id);
    public void baeup_ok(BaesongVo bvo);
    public void gibon(String userid);  
    public void baedel(String id);
    public void gibonchg(String userid);
    public void chg_ok(String cla, String id);
    public CartVo cartv(String menu);
    public void gumae_ok(GumaeVo gvo);
    public void cartalldel(String userid);
    public int getJcode(String jumuncode);
    public ArrayList<HashMap<String,String>> getTotal(String jumuncode);
    public void jumundel(String id);
	 public ArrayList<ReviewVo> getReview(String fcode);
	public ArrayList<AreviewVo> getAreview(String rid);
     
}
