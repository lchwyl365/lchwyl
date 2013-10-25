package com.team.loan.action;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import com.core.sys.action.BaseAction;
import com.core.util.Page;
import com.team.loan.domain.Product;
import com.team.loan.service.ProductService;

@SuppressWarnings("serial")
@Controller
public class ProductAction extends BaseAction {

	private Product product;
	
	private Page pager;
	
	private int result;
	
	private String backurl;
	
	@Resource
	private ProductService productService;

	public String index(){
		pager= productService.search(pager);
		return "index";
	}
	
	public String add(){
		result = productService.insert(product);
		backurl = "product/add.jsp";
		return "result-jsp";
	}
	
	public String delete(){
		result = productService.delete(product.getTbid());
		return "result-json";
	}
	
	public String intoUpdate(){
		product = productService.searchById(product.getTbid());
		return "intoUpdate";
	}
	
	public String update(){
		result = productService.update(product);
		backurl = "front/product_intoUpdate.action?product.tbid="+product.getTbid();
		return "result-jsp";
	}
	
	public Product getProduct(){
		return product;
	}
	public void setProduct(Product product){
		this.product = product;
	}
	public int getResult() {
		return result;
	}
	public void setResult(int result) {
		this.result = result;
	}
	public Page getPager() {
		return pager;
	}
	public void setPager(Page pager) {
		this.pager = pager;
	}
	public String getBackurl() {
		return backurl;
	}
	public void setBackurl(String backurl) {
		this.backurl = backurl;
	}
}