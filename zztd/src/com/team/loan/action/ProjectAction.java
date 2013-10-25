package com.team.loan.action;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import com.core.sys.action.BaseAction;
import com.core.util.Page;
import com.team.loan.domain.Project;
import com.team.loan.service.ProjectService;

@SuppressWarnings("serial")
@Controller
public class ProjectAction extends BaseAction {

	private Project project;
	
	private Page pager;
	
	private int result;
	
	private String backurl;
	
	@Resource
	private ProjectService projectService;

	public String index(){
		pager = projectService.search(pager);
		return "index";
	}
	
	public String add(){
		result = projectService.insert(project);
		backurl = "project/add.jsp";
		return "result-jsp";
	}
	
	public String delete(){
		result = projectService.delete(project.getTbid());
		return "result-json";
	}
	
	public String intoUpdate(){
		project = projectService.searchById(project.getTbid());
		return "intoUpdate";
	}
	
	public String update(){
		result = projectService.update(project);
		backurl = "front/project_intoUpdate.action?project.tbid="+project.getTbid();
		return "result-jsp";
	}
	
	public Project getProject(){
		return project;
	}
	public void setProject(Project project){
		this.project = project;
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