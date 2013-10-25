package com.team.loan.persistence;

import java.util.List;
import com.core.util.Page;
import com.team.loan.domain.Project;

public interface ProjectMapper {
	
    int deleteByPrimaryKey(Long tbid);

    int insert(Project project);

    Project selectByPrimaryKey(Long tbid);

    int updateByPrimaryKey(Project project);

	List<Project> search(Page pager);
	
}