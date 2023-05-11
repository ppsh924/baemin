package kr.co.baemin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.co.baemin.mapper.ProductMapper;

@Service
@Qualifier("ps")
public class ProductServiceImpl implements ProductService{
    
	@Autowired
	private ProductMapper mapper;
}

