package com.team.loan.service;
import com.core.util.Page;
import com.team.loan.domain.Project;

public interface ProjectService {

	Project searchById(Long tbid);
	
	Page search(Page pager);
	
	int insert(Project project);

	int update(Project project);
	
	int delete(Long tbid);
	
}