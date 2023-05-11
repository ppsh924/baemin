package kr.co.baemin.mapper;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Param;

import kr.co.baemin.vo.AreviewVo;
import kr.co.baemin.vo.CartVo;
import kr.co.baemin.vo.FoodVo;
import kr.co.baemin.vo.GumaeVo;
import kr.co.baemin.vo.ReviewVo;
import kr.co.baemin.vo.WishVo;

public interface MypageMapper {
	public ArrayList<WishVo> wishview(String userid);
	public void wishdel(String id);
	public void cartadd(String fcode, String su,String userid,String menu,String price,String baeprice);
	public int cart_check(String menu,String userid);
	public ArrayList<CartVo> cartview(String userid);
	public void cartup(String su, String price, String menu, String userid);
    public void cartdel(String id);
    public void cartsu(int su, int price, String menu, String userid);
    public void cartstate(String state,String baeprice,String userid);
    /*public int cartstate2(int state);*/
    public ArrayList<HashMap<String,String>> jumunview(String userid);
    public void chgstate(@Param("state2") String state2,@Param("jumuncode") String jumuncode);
    public ArrayList<HashMap<String,String>> jumundetail(String userid, String jumuncode);
    public void jumundel(String id);
	public FoodVo getFood2(String guid);
	public void review_ok(ReviewVo rvo1);
	public void setHugi(int guid);
	public Integer getStar(String fcode);
	public void setStar(int star, String fcode);
	public ArrayList<ReviewVo> reviewlist(String userid);
	public void reviewdel(String id);
	public ArrayList<GumaeVo> review(String jumuncode, String userid);
	public ArrayList<AreviewVo> areviewlist(String userid);
	public ArrayList<HashMap<String, String>> getreviewlist(String userid);
	public ArrayList<GumaeVo> getreviewlist2(String userid);
	public ArrayList<HashMap<String, String>> update(String userid);
}
