package com.team.loan.service;
import com.core.util.Page;
import com.team.loan.domain.Product;

public interface ProductService {

	Product searchById(Long tbid);
	
	Page search(Page pager);
	
	int insert(Product product);

	int update(Product product);
	
	int delete(Long tbid);
	
}