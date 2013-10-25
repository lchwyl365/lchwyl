package com.core.sys.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.core.sys.domain.SysUser;
import com.core.sys.persistence.SysUserMapper;
import com.core.sys.service.SysUserService;
import com.core.util.gencode.EncoderHandler;

@Service("sysUserService")
public class SysUserServiceImpl implements SysUserService {

	@Resource
	private SysUserMapper sysUserMapper;
	
	public SysUser searchById(Long tbid){
		return sysUserMapper.selectByPrimaryKey(tbid);
	}
	
	@Transactional
	public int insert(SysUser sysUser) {
		
		sysUser.setPassword(EncoderHandler.getPwdCode(sysUser.getEmail(), sysUser.getPassword()));
		return sysUserMapper.insert(sysUser);
	}
	
	@Transactional
	public int update(SysUser sysUser) {
		return sysUserMapper.updateByPrimaryKey(sysUser);
	}
	
	@Transactional
	public int delete(Long tbid){
		return sysUserMapper.deleteByPrimaryKey(tbid);
	}
	
	public List<SysUser> search(SysUser sysUser) {
		// TODO Auto-generated method stub
		return null;
	}

	public SysUser searchByUsername(String username) {
		if(username.indexOf("@") == -1){
			//按用户名查找
			return sysUserMapper.searchByCondition(username,null);
		}else{
			//按邮箱查找
			return sysUserMapper.searchByCondition(null,username);
		}
	}

}