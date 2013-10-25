package com.team.loan.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.core.util.Page;
import com.team.loan.domain.Project;
import com.team.loan.persistence.ProjectMapper;
import com.team.loan.service.ProjectService;

@Service("projectService")
public class ProjectServiceImpl implements ProjectService {

	@Resource
	private ProjectMapper projectMapper;
	
	public Project searchById(Long tbid){
		return projectMapper.selectByPrimaryKey(tbid);
	}
	
	@Transactional
	public int insert(Project project) {
		return projectMapper.insert(project);
	}
	
	@Transactional
	public int update(Project project) {
		return projectMapper.updateByPrimaryKey(project);
	}
	
	@Transactional
	public int delete(Long tbid){
		return projectMapper.deleteByPrimaryKey(tbid);
	}
	
	public Page search(Page pager) {
		if(pager == null){
		  pager = new Page();
		}
		List<Project> items = projectMapper.search(pager);
		pager.setDatas(items);	  
		return pager;
	}

}