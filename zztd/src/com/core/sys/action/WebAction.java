package com.core.sys.action;

import org.springframework.stereotype.Controller;


@SuppressWarnings("serial")
@Controller("webAction")
public class WebAction extends BaseAction {

	private String srcurl;
	
	public String inputLogin(){
		
		return "inputLogin";
	}

	public String getSrcurl() {
		return srcurl;
	}

	public void setSrcurl(String srcurl) {
		this.srcurl = srcurl;
	}
	
	
}
