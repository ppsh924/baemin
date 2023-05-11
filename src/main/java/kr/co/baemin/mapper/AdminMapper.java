package kr.co.baemin.mapper;

import java.util.ArrayList;
import java.util.HashMap;

import kr.co.baemin.vo.AmantoVo;
import kr.co.baemin.vo.AreviewVo;
import kr.co.baemin.vo.FoodVo;
import kr.co.baemin.vo.GongjiVo;
import kr.co.baemin.vo.MantoVo;
import kr.co.baemin.vo.MemberVo;
import kr.co.baemin.vo.ReviewVo;

public interface AdminMapper {

	public ArrayList<HashMap<String, String>> adminmtm();
	public void amanto(AmantoVo avo);
	public void setState(String field, int id);
	public ArrayList<MemberVo> getMember();
	public void out_ok(String id);
	public ArrayList<HashMap<String, String>> admingumae();
	public void chgstate(String state, String id);
	public ArrayList<ReviewVo> getReview();
	public void adminreview_ok(ReviewVo rvo);
	public void reviewdel(String id);
	public ArrayList<FoodVo> alist(String fcode);
	public FoodVo acontent(String fcode);
	public void acontent_ok(FoodVo fvo);
	public ArrayList<FoodVo> menuone(String state);
	public ArrayList<FoodVo> menuall(String fcode);
	public void areview(AreviewVo avo);
	public void setState2(String string, int rid);
	public void changeimage(String sql, String id, String fcode);
	public ArrayList<FoodVo> menuallSearch(String fcode, String keyword);
	public ArrayList<FoodVo> franchise(String fran);
	public ArrayList<FoodVo> goodtaste(String total_orders);
	public void write_ok(GongjiVo gvo);
	public ArrayList<GongjiVo> glist();
	public GongjiVo gcontent(String id);
	public void delete(int id);
	public GongjiVo update(GongjiVo gvo);
	public void update_ok(GongjiVo gvo);
}
