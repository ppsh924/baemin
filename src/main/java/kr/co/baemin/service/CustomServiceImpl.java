package kr.co.baemin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.baemin.mapper.CustomMapper;
import kr.co.baemin.vo.MtmVo;

@Service
@Qualifier("cs")
public class CustomServiceImpl implements CustomService{
	@Autowired
	private CustomMapper mapper;

	@Override
	public String mtm_ok(MtmVo mvo) {
		mapper.mtm_ok(mvo);
		return "/custom/mtm_ok";
	}
}
