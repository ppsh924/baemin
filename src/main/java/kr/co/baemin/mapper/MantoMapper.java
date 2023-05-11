package kr.co.baemin.mapper;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import kr.co.baemin.vo.AmantoVo;
import kr.co.baemin.vo.MantoVo;

public interface MantoMapper {
	public void write_ok(String name,String email,String que, String title, String content, String fname);
	public ArrayList<MantoVo> list(String userid);
	public void write_ok(MantoVo mvo);
	public void delete(int id);
	public ArrayList<HashMap<String, String>> getlist(String userid);
}
