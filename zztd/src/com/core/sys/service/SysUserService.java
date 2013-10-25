package com.core.sys.service;
import java.util.List;
import com.core.sys.domain.SysUser;

public interface SysUserService {

	SysUser searchById(Long tbid);
	
	List<SysUser> search(SysUser sysUser);
	
	int insert(SysUser sysUser);

	int update(SysUser sysUser);
	
	int delete(Long tbid);

	SysUser searchByUsername(String username);
	
}