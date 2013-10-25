package ${model.packageName}.service;
import com.core.code.util.Page;
import ${model.packageName}.domain.${model.className};

public interface ${model.className}Service {

	${model.className} searchById(Long tbid);
	
	Page search(Page pager);
	
	int insert(${model.className} ${model.className?uncap_first});

	int update(${model.className} ${model.className?uncap_first});
	
	int delete(Long tbid);
	
}