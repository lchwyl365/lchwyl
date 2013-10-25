package com.core.sys.action;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.core.sys.domain.SysUser;
import com.core.sys.service.SysUserService;
import com.core.util.gencode.EncoderHandler;

@SuppressWarnings("serial")
@Controller("sysUserAction")
public class SysUserAction extends BaseAction {

	private SysUser sysUser;
	
	@Resource
	private SysUserService sysUserService;
	
	private int result;
	
	private String name;//jquery pluin ValidForm , datetype:ajaxurl  param 
	
	private String param;
	
	private Map<String,String> validInfo;
	
	private String securityCode;
	
	public String search(){
	
		return "search";
	}
	
	public String login(){
		SysUser tempUser = sysUserService.searchByUsername(sysUser.getUsername());
		if(tempUser != null){
			//对密码进行加密后比较
			String pwdcode = EncoderHandler.getPwdCode(tempUser.getEmail(), sysUser.getPassword());
			if(pwdcode.equals(tempUser.getPassword())){
				result = 1;
				this.httpSession.setAttribute("sysUser", sysUser);
			}else{//密码不存在
				result = 2;
			}
		}else{ //用户名不存在
			if(sysUser.getUsername().indexOf("@") == -1){
				result = 4;
			}else{
				result = 5;
			}
		}
		return "result";
	}
	
	public String valid(){
		validInfo = new HashMap<String,String>();
		if("sysUser.email".equals(name) || "sysUser.username".equals(name)){
			SysUser tempUser = sysUserService.searchByUsername(param);
			if(tempUser != null){
				if("sysUser.email".equals(name)){
					validInfo.put("info","邮箱已被使用");
					validInfo.put("status","n");
				}else{
					validInfo.put("info","用户名已被使用");
					validInfo.put("status","n");
				}
			}else{
				validInfo.put("info"," ");
				validInfo.put("status","y");
			}
		}

		return "validInfo";
	}
	
	public String insert(){
		String sessioncode = (String)session.get("SESSION_SECURITY_CODE");
		if(securityCode.equals(sessioncode)){
			result = sysUserService.insert(sysUser);
			if(result == 1){
				return "result";
			}else{
				return "register";
			}
		}else{
			result = 2;
			return "register";
		}
		
	}
	
	public SysUser getSysUser(){
		return sysUser;
	}
	public void setSysUser(SysUser sysUser){
		this.sysUser = sysUser;
	}

	public int getResult() {
		return result;
	}

	public void setResult(int result) {
		this.result = result;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getParam() {
		return param;
	}

	public void setParam(String param) {
		this.param = param;
	}

	public Map<String, String> getValidInfo() {
		return validInfo;
	}

	public void setValidInfo(Map<String, String> validInfo) {
		this.validInfo = validInfo;
	}

	public String getSecurityCode() {
		return securityCode;
	}

	public void setSecurityCode(String securityCode) {
		this.securityCode = securityCode;
	}
}