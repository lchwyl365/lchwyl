package com.team.loan.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.core.util.Page;
import com.team.loan.domain.Product;
import com.team.loan.persistence.ProductMapper;
import com.team.loan.service.ProductService;

@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Resource
	private ProductMapper productMapper;
	
	public Product searchById(Long tbid){
		return productMapper.selectByPrimaryKey(tbid);
	}
	
	@Transactional
	public int insert(Product product) {
		return productMapper.insert(product);
	}
	
	@Transactional
	public int update(Product product) {
		return productMapper.updateByPrimaryKey(product);
	}
	
	@Transactional
	public int delete(Long tbid){
		return productMapper.deleteByPrimaryKey(tbid);
	}
	
	public Page search(Page pager) {
		if(pager == null){
		  pager = new Page();
		}
		List<Product> items = productMapper.search(pager);
		pager.setDatas(items);	  
		return pager;
	}

}