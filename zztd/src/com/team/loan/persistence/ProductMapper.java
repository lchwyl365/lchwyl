package com.team.loan.persistence;

import java.util.List;

import com.core.util.Page;
import com.team.loan.domain.Product;

public interface ProductMapper {
	
    int deleteByPrimaryKey(Long tbid);

    int insert(Product record);

    Product selectByPrimaryKey(Long tbid);

    int updateByPrimaryKey(Product record);

	List<Product> search(Page pager);
	
}