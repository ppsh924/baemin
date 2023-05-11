package kr.co.baemin.mapper;

import java.util.ArrayList;

import kr.co.baemin.vo.GongjiVo;

public interface GongjiMapper {
	public void write_ok(GongjiVo gvo);
	public ArrayList<GongjiVo> list();
	public GongjiVo content(String id);
	public void delete(int id);
	public GongjiVo update(GongjiVo gvo);
	public void update_ok(GongjiVo gvo);

}
