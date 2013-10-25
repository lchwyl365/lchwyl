package com.core.sys.persistence;

import org.apache.ibatis.annotations.Param;

import com.core.sys.domain.SysUser;

public interface SysUserMapper {

	int insert(SysUser record);
	
    int deleteByPrimaryKey(Long tbid);

    int updateByPrimaryKey(SysUser record);
    
    SysUser selectByPrimaryKey(Long tbid);

	SysUser searchByCondition(@Param(value="username")String username,@Param(value="email")String email);
    
}